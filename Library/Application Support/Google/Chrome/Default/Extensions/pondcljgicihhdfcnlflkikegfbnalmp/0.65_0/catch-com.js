/*

1. Check authorization against user.json
2. present login form if not auth'ed, else go to step 5.
3. non-Catch auth kills popup, go back to step one.
4. Catch auth goes to step 5.
5. Show username and the text of the note in an editable textarea.
6. Take submission and post; tricky part here is if auth has been lost for
   reason--how do we preserve the edits? Stick it into the DOM? That gets into
   more complicated territory. Leave hooks for this but push it to later?
7. Show submitted note to user.

How step 5 works:

    In order to communicate with the actual page the user is on, we need what
    Chrome considers a "content script" to be present on that page. We could
    insert those onto each page the user visits, but I prefer injecting it
    programmatically only on demand.

    TODO: Make sure this only happens once, not every click.

    First we use executeScript to put the our script on the page. All the
    script (content_script.js) does is add a listener for sendRequest; we
    need this in order to communicate between our popup and the page we want
    the text from.

    One that's set up, we run chrome.tabs.getSelected with a callback that
    sends the request for the selection to the current tab, itself with a
    callback that runs setupNoteForm().

TODO: handle the auth-loss case mentioned in step 6.


This uses the Revealing Module Pattern; for details see:
http:www.klauskomenda.com/code/javascript-programming-patterns/#revealing
*/
var HOST = "catch.com";
var PROTO = "https";
var SHOW_SIGN_IN_IN_TAB = "show_sign_in_in_tab";
var CatchComExtension = function() {

    function init() {
        var self = this;

        mpq.track("Chrome Extension Text Note Clicked");
        $("#account-form").submit(self.handleLogin);
        $("#gSignIn").click(self.handleGLogin);
        $("#createAccount").click(self.handleCreateAccount);
        getUserData(authorizedCallback, unauthorizedCallback);
        localStorage[SHOW_SIGN_IN_IN_TAB] = true;
    }

    function mk_uri(path) { return [PROTO, "://", HOST, path].join(""); }

    function getUserData(callback, errorback) {
        $.ajax({
            "url": mk_uri("/v2/user.json"),
            "dataType": "json",
            "type": "POST",
            "success": function (data) { callback(data) },
            "error": function (data, something) {
                if (data.status == 401) {
                    errorback();
                } else {
                    handleUnknownProblem();
                }
            }
        });
    }

    function handleLogin(event) {
        mpq.track("Sign In Clicked");
        $.ajax({
            "url": mk_uri("/login/catch"),
            "type": "POST",
            "data": {
                "email": $("#account-form").find("#username").val(),
                "password": $("#account-form").find("#password").val(),
            },
            "success": handleLoginResponse,
            "error": function (data) { 
                if (data.status == 400) {
                    mpq.track("Registration Problem", {"problem_type": "RESULT_BAD_REQUEST", 
                        "Action": "Sign In"});
                } else if (data.status == 401) {
                    mpq.track("Registration Problem", {"problem_type": "RESULT_UNAUTHORIZED", 
                        "Action": "Sign In"});
                } else {
                    mpq.track("Registration Problem", {"problem_type": "UNKNOWN (" + data.status + ")",
                        "Action": "Sign In"});
                }
            },
        });
        return false;
    }

    function handleCreateAccount() {
        mpq.track("Create Account Clicked"); 
        var url = mk_uri("/login/create");
        chrome.tabs.create({"url": url});
    }
    
    function handleGLogin() {
        mpq.track("Google Sign-in Clicked");
        var url = mk_uri("/login/google");
        chrome.tabs.create({"url": url});
    }

    function handleLoginResponse(data) {
        mpq.track("Registration Completed", {"Action": "Sign In"});
        $("#account-form").hide();
        getUserData(authorizedCallback, function () {
            $(".bad-up").show();
            unauthorizedCallback();
        });
    }

    function initMixpanel(userdata) {
        if (userdata) {
            mpq.register({'Registered': true});
            mpq.register({'Account Level': userdata['user']['account_level']});
        } else {
            mpq.register({'Registered': false});
            mpq.register({'Account Level': -1});
        }

        // init experiments
        mpq.register({'Experiment Show Sign In In Tab': localStorage[SHOW_SIGN_IN_IN_TAB]});
    }

    function unauthorizedCallback() {
        initMixpanel(false);
        mpq.track("Chrome Sign In Start");
        if (localStorage[SHOW_SIGN_IN_IN_TAB]) {
            var url = mk_uri("/login/catch");
            chrome.tabs.create({"url": url});
        } else {
            $("#account-form").find("input").val("");
            $("#account-form").show().find("#username").focus();
        }
    }

    function handleUnknownProblem() {
        var p = "<p>Something went wrong, sorry. Please try again later.</p>";
        $("body").append($(p));
    }

    function authorizedCallback(userdata) {
        initMixpanel(userdata);

        function wrap() {
            if (typeof(chrome.extension.lastError) == "undefined") {
                getSel();
            } else {
                var p = ["<p>This extension cannot be used in ",
                    "chrome:// or file:// locations.</p>"].join("");
                $("body").append($(p));
            }
        }
        chrome.tabs.executeScript(null, {"file": "content_script.js"}, wrap);
        function getSel() {
            function cb(note) { setupNoteForm(note, userdata); };
            chrome.tabs.getSelected(null, function (tab) {
                chrome.tabs.sendRequest(tab.id, {"method": "getSelection"}, cb);
            });
        }
    }

    function setupNoteForm(note, userdata) {
        var text = [note.title, note.url];
        if (note.text.length) { text.push("", note.text); }
        $("#username-display").html(userdata.user.user_name);
        $("#note-form").find("#noteText").val(text.join("\n"));
        $("#note-form").find("#bearer_token").val(userdata.user.access_token);
        $("#note-form").submit(handlePostNote).show();
        var h = $("#note-form").find("textarea")[0].scrollHeight;
        $("#note-form").find("textarea").height(parseInt(h) + parseInt(2));
        $("#note-form").find("textarea").each(function () {
            var l = this.value.length;
            this.setSelectionRange(l, l);
            $(this).focus();
        });
    }

    function handlePostNote(event) {
        mpq.track("Note Editor Done Clicked");
        var token = $("#note-form").find("#bearer_token").val();
        var uri = ["/v2/notes.json?bearer_token=", token].join("");
        $.ajax({
            "url": mk_uri(uri),
            "type": "POST",
            "dataType": "json",
            "data": {"text": $(event.target).find("textarea").val()},
            "success": handlePost,
            "error": function (data) { 
                if (data.status == 400) {
                    mpq.track("API Problem", {"problem_type": "RESULT_BAD_REQUEST", 
                        "Action": "Create Note"});
                } else if (data.status == 401) {
                    mpq.track("API Problem", {"problem_type": "RESULT_UNAUTHORIZED", 
                        "Action": "Create Note"});
                } else {
                    mpq.track("API Problem", {"problem_type": "UNKNOWN (" + data.status + ")",
                        "Action": "Create Note"});
                }
            },
        });
        return false;
    }

    function handlePost(data) {
        $("#note-form").hide();
        $("#note-form").find("textarea").val("");
        $("#note-posted").find(".postedNoteText").html(data.notes[0].text);
        $("#note-posted").find(".notification").html(
                "The following has been posted to your notes:");
        $("#note-posted").show();
        setTimeout(window.close, 2500);
    }

    return {
        "init": init,
        "handleLogin": handleLogin,
        "handleGLogin": handleGLogin,
        "handleCreateAccount": handleCreateAccount
    }
}();
$(document).ready(function () { CatchComExtension.init(); });

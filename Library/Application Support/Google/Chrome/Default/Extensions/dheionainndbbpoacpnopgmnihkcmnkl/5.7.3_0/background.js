function gmelius() {
    function onInstall() {
        var notification = webkitNotifications.createNotification('/icon/icon48.png', // icon url - can be relative
        'Sucessfully installed Gmelius ' + currVersion, // notification title
        'Tip: To remove Gmelius icon from the Chrome toolbar: right-click on it › "Hide Button".' // notification body text
        );
        notification.show();
        setTimeout(function() {
            notification.cancel();
        }, 6000);
        chrome.tabs.create({
            url: chrome.extension.getURL("options.html")
        });
    }

    function onUpdate() {
        var notification = webkitNotifications.createNotification('/icon/icon48.png', // icon url - can be relative
        'Gmelius updated to version ' + currVersion, // notification title
        'Changelog: New keyboard shortcuts, diverse bug fixes, Chinese language added. If necessary, check your Gmelius settings and restart your browser.' // notification body text
        );
        notification.show();
        setTimeout(function() {
            notification.cancel();
        }, 10000);
    }

    function goOptions() {
        chrome.tabs.create({
            url: chrome.extension.getURL("options.html")
        });
    }

    function getVersion() {
        var details = chrome.app.getDetails();
        return details.version;
    }
    // Check if the version has changed.
    var currVersion = getVersion();
    var prevVersion = localStorage.version;
    if (currVersion != prevVersion) {
        // Check if we just installed this extension.
        if (typeof prevVersion == 'undefined') {
            onInstall();
        } else if (prevVersion < '5.6.5') {
            onUpdate();
            goOptions();
        } else {
            onUpdate();
        }
        localStorage.version = currVersion;
    }
    // seek request and send response to content scripts
    chrome.extension.onRequest.addListener(function(request, sender, sendResponse) {
        if (request.action == "reload") {
            reloadTab();
        }
    });

    function reloadTab() {
        chrome.windows.getCurrent(function(win) {
            var cwin = win.id;
            chrome.tabs.getAllInWindow(cwin, function(tabs) {
                for (var i = 0; i < tabs.length; i++) {
                    var t = tabs[i].url;
                    if (t.match('mail.google.com')) {
                        var tab = tabs[i];
                        chrome.tabs.update(tab.id, {
                            url: tab.url,
                            selected: tab.selected
                        }, null);
                    }
                }
            });
        });
    }

    // This event is fired with the user accepts the input in the omnibox.
    chrome.omnibox.onInputEntered.addListener(

    function(text) {
        console.log('inputEntered: ' + text);
        chrome.tabs.create({
            url: chrome.extension.getURL("options.html")
        });
    });
}
window.addEventListener('load', function() {
    gmelius();
}, false);

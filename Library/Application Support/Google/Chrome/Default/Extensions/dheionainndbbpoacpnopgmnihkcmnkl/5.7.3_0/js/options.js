$(function() {
	// Locale
	var lan = chrome.i18n.getMessage("@@ui_locale");
	var dir = chrome.i18n.getMessage("@@bidi_dir");
	var locale = [
	"welcome",
	"tip",
	"hoptions",
	"hfeedback",
	"hupdates",
	"hlove",
	"lovetxt",
	"moreinfo",
	"h4space",
	"h4header",
	"h4inbox",
	"h4icons",
	"spacetxt",
	"iconstxt",
	"footsettings",
	"footbugs",
	"footupdate",
	"savebtn",
	"unchecklabel",
	"changes",
	"feedbackbtn",
	"updatebtn",
	"lads",
	"lenlarge",
	"lfooter",
	"lstatusc",
	"lsearchsc",
	"lavablesc",
	"lchat",
	"lakc",
	"lemptinbox",
	"lmouse",
	"lconsider",
	"lheader",
	"lkey",
	"lbacktop",
	"linbox",
	"lvoice",
	"lreader",
	"lplayy",
	"ldefrow",
	"lrow",
	"lbtnnav",
	"lcoloriz",
	"lfonts",
	"llabelsr",
	"lattleft",
	"latticons",
	"lmsicons",
	"lbwicons",
	"translate",
	"translated"
	];

	for (var i = 0; i < locale.length; i++) {
		var localnam = locale[i];
		var localtxt = chrome.i18n.getMessage(localnam);
		$('#'+ localnam).append(localtxt);
	}
	//Date
	var d = new Date();
	var year = d.getFullYear();
	$('#year').append(year);
    // INIT
    var storage = chrome.storage.sync;
    var options = [];
    $("#notifysav").hide();
    loadOptions();
    // STORAGE
    // Save Button Click event
    $("#save").live('click', function() {
        saveOptions();
    });

    function loadOptions() {
    if ( lan === "he" ) {$('body').attr('dir', dir).addClass(dir);}
    else {$('body').attr('dir', 'ltr').addClass('ltr');}
        storage.get('options', function(o) {
            $("#ads").attr('checked', o.options[0]);
            $("#chat").attr('checked', o.options[1]);
            $("#akc").attr('checked', o.options[2]);
            $("#statusc").attr('checked', o.options[3]);
            $("#searchsc").attr('checked', o.options[4]);
            $("#avablesc").attr('checked', o.options[5]);
            $("#emptinbox").attr('checked', o.options[6]);
            $("#footer").attr('checked', o.options[7]);
            $("#header").attr('checked', o.options[8]);
            $("#backtop").attr('checked', o.options[9]);
            $("#key").attr('checked', o.options[10]);
            $("#keytype").attr('value', o.options[11]);
            $("#btnnav").attr('checked', o.options[12]);
            $("#coloriz").attr('checked', o.options[13]);
            $("#inbox").attr('checked', o.options[14]);
            $("#defrow").attr('checked', o.options[15]);
            $("#contact").attr('checked', o.options[16]);
            $("#consider").attr('checked', o.options[17]);
            $("#row").attr('checked', o.options[18]);
            $("#enlarge").attr('checked', o.options[19]);
            $("#mouse").attr('checked', o.options[20]);
            $("#fonts").attr('checked', o.options[21]);
            $("#voice").attr('checked', o.options[22]);
            $("#reader").attr('checked', o.options[23]);
            $("#playy").attr('checked', o.options[24]);
            $("#labelsr").attr('checked', o.options[25]);
            $("#attleft").attr('checked', o.options[26]);
            $("#atticons").attr('checked', o.options[27]);
            $("#msicons").attr('checked', o.options[28]);
            $("#bwicons").attr('checked', o.options[29]);
            $("#color").attr('value', o.options[30]);
        });
    }

    function saveOptions() {
        options[0] = $("#ads").prop('checked');
        options[1] = $("#chat").prop('checked');
        options[2] = $("#akc").prop('checked');
        options[3] = $("#statusc").prop('checked');
        options[4] = $("#searchsc").prop('checked');
        options[5] = $("#avablesc").prop('checked');
        options[6] = $("#emptinbox").prop('checked');
        options[7] = $("#footer").prop('checked');
        options[8] = $("#header").prop('checked');
        options[9] = $("#backtop").prop('checked');
        options[10] = $("#key").prop('checked');
        options[11] = $("#keytype").val();
        options[12] = $("#btnnav").prop('checked');
        options[13] = $("#coloriz").prop('checked');
        options[14] = $("#inbox").prop('checked');
        options[15] = $("#defrow").prop('checked');
        options[16] = $("#contact").prop('checked');
        options[17] = $("#consider").prop('checked');
        options[18] = $("#row").prop('checked');
        options[19] = $("#enlarge").prop('checked');
        options[20] = $("#mouse").prop('checked');
        options[21] = $("#fonts").prop('checked');
        options[22] = $("#voice").prop('checked');
        options[23] = $("#reader").prop('checked');
        options[24] = $("#playy").prop('checked');
        options[25] = $("#labelsr").prop('checked');
        options[26] = $("#attleft").prop('checked');
        options[27] = $("#atticons").prop('checked');
        options[28] = $("#msicons").prop('checked');
        options[29] = $("#bwicons").prop('checked');
        options[30] = $('#color').val();

        storage.set({
            'options': options
        }, function() {
            $("#notifysav").fadeIn("slow").delay(2000).fadeOut("slow");
            chrome.extension.sendRequest({
                action: 'reload'
            });
        });
    }
    ///
    $('#uncheckall').click(function() {
        $("input[type='checkbox']").attr('checked', false);
        $('.F').show();
    });
    ///
    $("form").delegate("#row", "click", function() {
        $('#defrow').attr('checked', false);
    });
    $("form").delegate("#defrow", "click", function() {
        $('#row').attr('checked', false);
    });
    $("form").delegate("#atticons", "click", function() {
        $('#msicons').attr('checked', false);
    });
    $("form").delegate("#msicons", "click", function() {
        $('#atticons').attr('checked', false);
    });
    $(".pay").each(function() {
        var default_value = this.value;
        $(this).focus(function() {
            if (this.value == default_value) {
                this.value = '';
            }
        });
        $(this).blur(function() {
            if (this.value === '') {
                this.value = default_value;
            }
        });
    });
    // Details extension init
    var details = chrome.app.getDetails();
    $('#version').append(details.version);
    // Link to update URL & Feedback
    $('#update').click(function() {
        chrome.tabs.create({
            url: 'chrome://settings/extensions'
        });
        return false;
    });
    $('#btn-feedback').click(function() {
        chrome.tabs.create({
            url: 'https://chrome.google.com/webstore/support/dheionainndbbpoacpnopgmnihkcmnkl'
        });
        return false;
    });
    // Deselect All
    var inputs = document.getElementsByTagName("input"),
        button = document.getElementsByTagName("button")[0];
    button.disabled = true;
    for (var i = 0, j = inputs.length; i < j; i++) {
        inputs[i].onchange = function() {
            button.disabled = false;
        };
        inputs[i].onkeydown = function() {
            button.disabled = false;
        };
    }
}); //jQuery Ready

/*
Copyright (c) 2011-2013, Florian Bersier (info@gmelius.com)
All rights reserved.

Redistribution and use in source and binary forms, with or without
modification, are permitted provided that the following conditions are met:
    * Redistributions of source code must retain the above copyright
      notice, this list of conditions and the following disclaimer.
    * Redistributions in binary form must reproduce the above copyright
      notice, this list of conditions and the following disclaimer in the
      documentation and/or other materials provided with the distribution.
    * Neither the name of GMELIUS nor the names of its contributors may be
      used to endorse or promote products derived from this software without
      specific prior written permission.

THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS" AND
ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED
WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE
DISCLAIMED. IN NO EVENT SHALL FLORIAN BERSIER BE LIABLE FOR ANY
DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES
(INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES;
LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND
ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT
(INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS
SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
*/
$(function() {
    var storage = chrome.storage.sync;
    // Retrieve Options
    storage.get('options', function(o) {
        var ads = o.options[0];
        var chat = o.options[1];
        var akc = o.options[2];
        var statusc = o.options[3];
        var searchsc = o.options[4];
        var avablesc = o.options[5];
        var emptinbox = o.options[6];
        var footer = o.options[7];
        var header = o.options[8];
        var backtop = o.options[9];
        var key = o.options[10];
        var keytype = o.options[11];
        var btnnav = o.options[12];
        var coloriz = o.options[13];
        var inbox = o.options[14];
        var defrow = o.options[15];
        var contact = o.options[16];
        var consider = o.options[17];
        var row = o.options[18];
        var enlarge = o.options[19];
        var mouse = o.options[20];
        var fonts = o.options[21];
        var voice = o.options[22];
        var reader = o.options[23];
        var playy = o.options[24];
        var labelsr = o.options[25];
        var attleft = o.options[26];
        var atticons = o.options[27];
        var msicons = o.options[28];
        var bwicons = o.options[29];
        var color = o.options[30];
        $("#canvas_frame").ready(function() {
            // do something once the iframe is loaded

            // Locale
            var lang, archive, spam, ddelete, move, labels;
            var lang = $('html').attr('lang');
            if ( lang === 'en-GB' || lang === 'en-US' || lang === 'en') {
            archive = 'Archive';
            spam = 'Spam';
            ddelete = 'Delete';
            move = 'Move';
            labels = 'Labels';
            } else {
            archive = chrome.i18n.getMessage("archive");
            spam = chrome.i18n.getMessage("spam");
            ddelete = chrome.i18n.getMessage("delete");
            move = chrome.i18n.getMessage("move");
            labels = chrome.i18n.getMessage("labels");
            }
            // End Locale

            var colourized = chrome.extension.getURL('css/colourized.png');
            var gicons = chrome.extension.getURL('css/gicons.png');
            var urlinbox = $('.TK .aim:first-child .nU a').attr("href"); //Fix Multiple accounts
            if (urlinbox === undefined) {
                urlinbox = "https://mail.google.com/mail/u/0/?shva=1#inbox";
            }
            var wasign, dir, left, right, css, keyt, h00, h01;
            //RTL detection
            dir = $("body").attr("dir");
            left = "left";
            right = "right";
            if (dir === "rtl") {
                left = "right";
                right = "left";
            }
            //Adapt screen
            //.G3 .ii img: width inline images
            css = "#gb a{text-decoration:none !important;}.Bu:last-child .pp{margin-left:0px !important}.Bu:last-child .T0{border:0px !important}.Bu:last-child .T0.akj{margin-top:57px !important}.l2{padding-bottom:15px !important}.G3 .ii img{max-width:100%;}.G3 .ii a img,.G3 .ii p img,.G3 .ii span img{max-width:inherit !important;} .amq img,.aju img,.anR img{border-radius:2px}";
            //Logout modification
            $('#gb_71').attr("href", "?logout");
            //Quota Gmail algo
            var fquota1 = $(".aeV .md div:first-child").text();
            var fquota2 = $(".aeV .md div:nth-child(2)").text();
            var fperc = fquota1.replace("% full", "") * 1;
            if (fperc <= 70) {
                wasign = "lightgreen";
            } else if (fperc > 70 && fperc < 90) {
                wasign = "orange";
            } else {
                wasign = "red";
            }
            //Add colorized indicator to quota
            $(".l2 .md div:first-child").append("<span style='font-size:15px;baseline:bottom;margin:0 4px;color:" + wasign + "'>&#9679;</span>");
            //Email Obfuscation
            $("textarea[name=to], textarea[name=cc], textarea[name=bcc]").live('blur', function(e) {
                var text = $(this).val();
                var separators = ['_', ' ', '\\[', '\\]', '\\(', '\\)'];
                var separatorExp = '(' + separators.join('|') + ')+';
                var keywords = {
                    '@': ['at'],
                    '.': ['dot', 'daught']
                };
                for (var keyword in keywords) {
                    var aliases = keywords[keyword];
                    aliases.forEach(function(alias) {
                        var regexp = new RegExp(separatorExp + alias + separatorExp);
                        text = text.replace(regexp, keyword);
                    });
                }
                $(this).val(text);
            });
            //Activity Gmail
            var fdetails1 = $(".ae3 .l6 div").text();
            //ADS
            if (ads === true) {
                css += ".T0 .ApVoH.pY,div.nH.pY,.mq,.mn,.z0DeRc,.iY .Bu:first-child+.Bu,.pY,.nH .u5,.nH .AT,.PS .Zs{display:none !important}.Gn .l2{padding-top:45px !important}";
            }
            //Back to Inbox
            if (inbox === true) {
                $('#gbqlw').prepend('<a href="' + urlinbox + '" target="_top" title="Inbox" style="position:absolute;width:116px;height:45px">');
            }
            //Empty Inbox
            if (emptinbox === true) {
                css += ".TD .TC{display:none !important}";
            }
            //Text Buttons
            if (btnnav === true) {
                //Archive
                css += ".ar4 .T-I.J-J5-Ji.lR.T-I-ax7.T-I-Js-IF.ar7 .asa:after{content:' " + archive + "' !important}";
                //Spam
                css += ".ar4 .T-I.J-J5-Ji.nN.T-I-ax7.T-I-Js-Gs.ar7 .asa:after{content:' " + spam + "' !important}";
                //Delete
                css += ".ar4 .T-I.J-J5-Ji.nX.T-I-ax7.T-I-Js-Gs.ar7 .asa:after{content:' " + ddelete + "' !important}";
                //Move
                css += ".ar4 .T-I.J-J5-Ji.T-I-Js-IF.ar7.ns.T-I-ax7 .asa:after{content:' " + move + "' !important}";
                //Labels
                css += ".ar4 .T-I.J-J5-Ji.T-I-Js-Gs.ar7.T-I-ax7.L3 .asa:after,.ar4 .T-I.J-J5-Ji.ar7.mw.T-I-ax7.L3 .asa:after{content:' " + labels + "' !important}";
            }
            //Colourize icons added March 28, 2012 (right-click fixed) 
            if (coloriz === true) {
                //Archive
                css += ".ar4 .T-I.J-J5-Ji.lR.T-I-ax7.T-I-Js-IF.ar7 .asa div{background: url('" + colourized + "') -85px -20px !important;}";
                //Spam
                css += ".ar4 .T-I.J-J5-Ji.nN.T-I-ax7.T-I-Js-Gs.ar7 .asa div{background: url('" + colourized + "') -43px -41px !important;}";
                //Delete
                css += ".ar4 .T-I.J-J5-Ji.nX.T-I-ax7.T-I-Js-Gs.ar7 .asa div{background: url('" + colourized + "') -63px -41px !important;}";
                //Move
                css += ".ar4 .T-I.J-J5-Ji.T-I-Js-IF.ar7.ns.T-I-ax7 .asa div{background: url('" + colourized + "') -84px -41px !important;}";
                //Labels
                css += ".ar4 .T-I.J-J5-Ji.T-I-Js-Gs.ar7.T-I-ax7.L3 .asa div,.ar4 .T-I.J-J5-Ji.ar7.mw.T-I-ax7.L3 .asa div{background: url('" + colourized + "') -21px -41px !important;}";
            }
            //Fonts Correction
            if (fonts === true) {
                css += ".hx .G3 .ii.gt.adP.adO font,.hx .G3 .ii.gt.adP.adO div[style],.hx .G3 .ii.gt.adP.adO p[style],.hx .G3 .ii.gt.adP.adO li[style],.hx .G3 .ii.gt.adP.adO span[style],.hx .G3 .ii.gt.adP.adO a[style],.hx .G3 .ii.gt.adP.adO b[style],.hx .G3 .ii.gt.adP.adO i[style],.hx .G3 .ii.gt.adP.adO strong[style]{font-family:arial,sans-serif !important;font-size:inherit !important;color:inherit !important}";
            }
            //Mouse
            if (mouse === true) {
                css += "::-webkit-scrollbar{width:0px !important;height:0px !important;}";
            }
            //Back to Top
            if (backtop === true) {
                $('#gbx3,#gbx4').live('click', function() {
                    $('.Tm,.aeF .apP').animate({
                        scrollTop: 0
                    }, 'slow');
                });
            }
            //Chat
            if (chat === true) {
                css += "div[class=\"nH pp T0\"]:nth-child(4) { border:0 !important; }";
                css += ".nH.s { display: none !important }";
                css += ".T0, .TZ,.akc .aj5.J-KU-Jg {border:0 !important; border-top:none}";
                css += ".aeO.aeR,.aeO.aeP.aeO.aeP.aeR,.aeS,.J-KU.J-KU-KO,.T0 .ApVoH.s,.pS.s{display: none !important }";
            }
            //Chat Color
/*if (chatcolor === true) {
                var chatcolhex = '222';
                css += ".AD .k,.AD .l.o,.AD .l.m,.AD .l.n,.AD .cf.Ht{background:#" + chatcolhex + " !important}";
            }*/
            //Remove whole section chat/calendar/docs
            if (akc === true) {
                css += ".akc.lKgBkb,.aeO[gh='ns']{display:none}";
            }
            //Chat Status
            if (statusc === true) {
                css += ".vH .vC tr.vm{display: none !important;height:0px !important}";
                css += ".T0 .ul{display:none !important;visibility:hidden !important;}";
            }
            //Chat Search Box
            if (searchsc === true) {
                css += ".T0 .dF{visibility:hidden !important;height:5px !important}";
            }
            //Chat Box visible
            if (avablesc === true) {
                css += ".T0 table.uJ{display: none !important;height:0px !important}";
            }
            //Footer
            if (footer === true) {
                css += ".l2.ov {visibility:hidden !important;display:none !important}";
            }
            //Enlarge
            if (enlarge === true) {
                css += ".Bs .Bu.y3,.dGpsQd .Bu:last-child,.Bs.nH.id .Bu:last-child{width:0px !important;margin:0 !important;padding:0 !important;display:none !important;visibility:hidden !important;}";
            }
            //Consider including
            if (consider === true) {
                css += "span.aaf{display:none !important}";
            }
            //Row Highlighter
            if (defrow === true) {
                css += ".aeJ .ae4 table.cf tr.yO:hover,.X0POSb table.cf tr.yO:hover{background-color:rgba(250, 250, 250, 0.85) !important;}.aeJ .ae4 table.cf tr.zE:hover,.X0POSb table.cf tr.zE:hover{background-color:rgba(255, 255, 255, 0.95) !important;}";
                //Preview Pane Horizontal mode
                css += ".aia .ae4 table.cf tr.yO:hover,.X0POSb table.cf tr.yO:hover{background-color:rgba(250, 250, 250, 0.85) !important;}.aia .ae4 table.cf tr.zE:hover,.X0POSb table.cf tr.zE:hover{background-color:rgba(255, 255, 255, 0.95) !important;}";
                //Preview Pane Vertical mode
                css += ".aia .age.apP.nn table.cf tr.aqw,.aia .age.apP.nn table.cf tr.aqw + tr,.aia .age.apP.nn table.cf tr.aqw + tr + tr.apw{background-color:rgba(250, 250, 250, 0.85)}.aia .age.apP.nn table.cf tr:not(aqw) ~ .apw{}";
            }
            //Row Color Picker
            if (row === true) {
                css += ".aeJ .ae4 table.cf tr.yO:hover,.X0POSb table.cf tr.yO:hover{background-color:" + color + " !important;opacity:0.75}.aeJ .ae4 table.cf tr.zE:hover,.X0POSb table.cf tr.zE:hover{background-color:" + color + " !important;}";
                //Preview Pane Horizontal mode
                css += ".aia .ae4 table.cf tr.yO:hover,.X0POSb table.cf tr.yO:hover{background-color:" + color + " !important;}.aia .ae4 table.cf tr.zE:hover,.X0POSb table.cf tr.zE:hover{background-color:" + color + " !important;}";
                //Preview Pane Vertical mode
                css += ".aia .age.apP.nn table.cf tr.aqw,.aia .age.apP.nn table.cf tr.aqw + tr,.aia .age.apP.nn table.cf tr.aqw + tr + tr.apw{background-color:" + color + ";opacity:0.75}.aia .age.apP.nn table.cf tr:not(aqw) ~ .apw{}";
            }
            //Search Google Apps
            if (header === true) {
                //mediaResize
                css += "@media only screen and (max-width: 980px) {#gbzc .gbt:nth-child(4),#gbzc .gbt:nth-child(5),#gbzc .gbt:nth-child(6){display:none} }";
                //CSS
                css += ".gbmb{position:relative;top:-1px;border-style:dashed dashed solid;border-color:transparent;border-bottom-color: silver;display:-moz-inline-box;display: inline-block;font-size: 0;height: 0;line-height: 0;width: 0;border-width: 0 3px 3px;padding-top: 1px;left: 4px}a.lofbt{font-weight:normal;color:#aaa;margin-left:15px;height:inherit;padding:1% 7px;border-radius:2px}a.lofbt:hover{background:#DD4B39;color:#fff}.b8.UC .J-J5-Ji .vh{margin-top:2px !important;padding:3px 10px !important}.gbt.zudfg{height:30px;position:absolute;" + right + ":3% !important;white-space:nowrap;padding-top:2px;font-size:13px;color:#aaa;width:auto;cursor:pointer}body[dir='rtl'] .gbt.zudfg .gbma{margin-left:7px !important}.gbes .gbt.zudfg{height:24px;line-height:19px}#gbu{z-index:991 !important;" + right + ":2% !important;" + left + ":auto !important;display:inline-block;}#gbvg .gbt a{display:inline-block !important}#gbqf{max-width:40% !important;}#gbqf fieldset.gbqff{max-width:100% !important}#gbqfbw{display:inline-block !important}";
                setTimeout(function() {
                    //IF class gbes
                    var rts = $('#gbx1').hasClass('gbes');
                    if (rts === true) {
                        h00 = 69;
                        h01 = 25;
                    } else {
                        h00 = 102;
                        h01 = 27;
                    }
                    $(window).bind('resize', function() {
                        var rts = $('#gbx1').hasClass('gbes');
                        if (rts === true) {
                            h00 = 69;
                            h01 = 25;
                        } else {
                            h00 = 102;
                            h01 = 27;
                        }
                    });
                    if ($('.nH.w-asV').hasClass('aiw')) {
                        $('.aiw #gbx1,.aiw #gbq,.aiw #gbu').hide();
                    } else {
                        $('.nH.w-asV .nH:nth-child(4)').hide();
                    }
                    //Height Inbox
                    var huc = $('.Tm.aeJ').height();
                    $('.Tm.aeJ').css('height', (huc + (h00 - h01)) + 'px');
                    $('.aiw #gb').css('height', (h01 + 5) + 'px');
                    //Button TOP
                    var htmlh0 = '<div class="gbt zudfg"><a class="spA searchoff" id="ggbts">' + '<span style="font-weight:bold">Search + Share</span><span id="tfst" class="gbma"></span></a><a class="lofbt" "onclick="gbar.logger.il(9,{l:\'o\'})" href="?logout" target="_top">Sign out</a></div>';
                    $('.aiw #gbx3').prepend(htmlh0);
                    var htmlh1 = '<li class="gbt" style="padding-right:3%"><span class="gbtb2"></span><a class="gbgt spA searchoff" id="ggbts"><span class="gbts gbtsa"><span>Search</span><span id="tfst" class="gbma"></span></span></a></li>';
                    $('#gbg .gbtc').prepend(htmlh1);
                    //End Button
                    $('.spA').hover(function(e) {
                        $(this).addClass('gbzt-hvr');
                    }, function() {
                        $(this).removeClass('gbzt-hvr');
                    });
                    $('.gbt').delegate('.searchoff', 'click', function() {
                        $(this).addClass('searchon').removeClass('searchoff').css({
                            '-webkit-user-select': 'none',
                            'opacity': '0.6'
                        });
                        $('.aiw #gb').css('height', h00 + 'px');
                        $('.aiw #gbu,.aiw #gbq').css('height', (h00 - h01) + 'px');
                        $('#gbu').css({'left': 'auto !important', 'right' : '2% !important'});
                        $('.Tm.aeJ').css('height', huc + 'px');
                        $('#tfst').removeClass('gbma').addClass('gbmb');
                        $('.aiw #gbx1,.aiw #gbq,.aiw #gbu,.nH.w-asV .nH:nth-child(4)').show(400, function() {
                            $('#gbqfq').val('').focus();
                        });
                    });
                    $('.gbt').delegate('.searchon', 'click', function() {
                        $(this).addClass('searchoff').removeClass('searchon').css({
                            '-webkit-user-select': 'none',
                            'opacity': '1'
                        });
                        $('#tfst').removeClass('gbmb').addClass('gbma');
                        $('.Tm.aeJ').css('height', (huc + (h00 - h01)) + 'px');
                        if ($('.nH.w-asV').hasClass('aiw')) {
                            $('.aiw #gbx1,.aiw #gbq,.aiw #gbu').hide('fast', function() {
                                $('#gbqfq').val('').blur();
                            });
                        } else {
                            $('.nH.w-asV .nH:nth-child(4)').hide('fast', function() {
                                $('#gbqfq').val('').blur();
                            });
                        }
                        $('.aiw #gb,.aiw #gbq').css('height', (h01 + 5) + 'px');
                    });
                    // Keyboard shortcuts
                    if (key === true) {
                        css += ".aiw #gbq{top:" + h01 + "px !important}";
                        jwerty.key(keytype, function() {
                            if ( $('#ggbts').hasClass('searchoff') ) {
                                $('#ggbts').addClass('searchon').removeClass('searchoff').css({
                                    '-webkit-user-select': 'none',
                                    'opacity': '0.6'
                                });
                                $('.aiw #gb').css('height', h00 + 'px');
                                $('.aiw #gbu,.aiw #gbq').css('height', (h00 - h01) + 'px');
                                $('#gbu').css({'left': 'auto !important', 'right' : '2% !important'});
                                $('.Tm.aeJ').css('height', huc + 'px');
                                $('#tfst').removeClass('gbma').addClass('gbmb');
                                $('.aiw #gbx1,.aiw #gbq,.aiw #gbu,.nH.w-asV .nH:nth-child(4)').show(400, function() {
                                    $('#gbqfq').val('').focus();
                                });
                            } else if ( !$('input:first').val() && $('#ggbts').hasClass('searchon') ) {
                                $('#gbqfq').val('').blur();
                                $('#ggbts').addClass('searchoff').removeClass('searchon').css({
                                    '-webkit-user-select': 'none',
                                    'opacity': '1'
                                });
                                $('#tfst').removeClass('gbmb').addClass('gbma');
                                $('.Tm.aeJ').css('height', (huc + (h00 - h01)) + 'px');
                                if ($('.nH.w-asV').hasClass('aiw')) {
                                    $('.aiw #gbx1,.aiw #gbq,.aiw #gbu').hide('fast');
                                } else {
                                    $('.nH.w-asV .nH:nth-child(4)').hide('fast');
                                }
                                $('.aiw #gb,.aiw #gbq').css('height', (h01 + 5) + 'px');
                            } else if ( $('#ggbts').hasClass('searchon') && !$('#gbqfq').is(':focus') ) {
                                $('#gbqfq').val('').blur();
                                $('#ggbts').addClass('searchoff').removeClass('searchon').css({
                                    '-webkit-user-select': 'none',
                                    'opacity': '1'
                                });
                                $('#tfst').removeClass('gbmb').addClass('gbma');
                                $('.Tm.aeJ').css('height', (huc + (h00 - h01)) + 'px');
                                if ($('.nH.w-asV').hasClass('aiw')) {
                                    $('.aiw #gbx1,.aiw #gbq,.aiw #gbu').hide('fast');
                                } else {
                                    $('.nH.w-asV .nH:nth-child(4)').hide('fast');
                                }
                                $('.aiw #gb,.aiw #gbq').css('height', (h01 + 5) + 'px');
                            }
                        });
                    } //key
                }, 1000);
            } //#
            //Voice
            if (voice === true) {
            css += ".gbtsas{margin:0 0 0 1em;padding-left:6px;color:#bbb}a.gbtsas:hover,a.gbtsas:active{color:#fff}";
            var htmlg = '<a class="gbtsas" href="https://www.google.com/voice" target="_blank">Voice</a>';
                $("#gb #gbz .gbtc .gbt:nth-child(8) .gbts").css('display', 'inline-block').append(htmlg);
            }
            //Reader
            if (reader === true) {
                $('a#gb_5').attr("href", "http://www.google.com/reader/");
                $('#gb_5 .gbts').text('Reader');
            }
            //Play
            if (playy === true) {
                css += "#gb_78{display:none !important}";
            }
            //Labels to the right
            if (labelsr === true) {
                css += ".xY .xT{width:inherit !important}.xT .yi{float:" + right + " !important;padding-" + left + ": 20px !important}";
            }
            //Attachment icons to the left
            if (attleft === true) {
                css += ".aeJ .F.cf.zt tr .yf{position:absolute;" + left + ":245px;margin-top:1px;border:none}.aeJ .F.cf.zt tr:first-child .yf{border:0 !important}.aeJ .F.cf.zt col.yg{width:0px !important}.aeJ .F.cf.zt col.yF{width:4ex !important;}.aeJ .F.cf.zt tr td.xY:nth-child(5){text-align:" + right + " !important}.aeJ .F.cf.zt tr td.yX.xY:nth-child(5){text-align:" + left + " !important} ";
            }
            // Attachment Google Icons
            if (atticons === true) {
                //XLS
                css += "img[class][title$=xls],img[class][title$=XLS],img[class][title$=xlsx],img[class][title$=XLSX]{width:0!important;height:0!important;padding-left:15px!important;padding-top:16px!important;background-position:0 -80px!important;background-image:url('" + gicons + "')!important}";
                //DOC
                css += "img[class][title$=doc],img[class][title$=DOC],img[class][title$=docx],img[class][title$=DOCX]{width:2px!important;height:0!important;padding-left:15px!important;padding-top:16px!important;background-position:0 -64px!important;background-image:url('" + gicons + "')!important}";
                //ZIP
                css += "img[class][title$=zip],img[class][title$=ZIP]{width:2px!important;height:0!important;padding-left:15px!important;padding-top:16px!important;background-position:0 -176px!important;background-image:url('" + gicons + "')!important}";
                //RAR
                css += "img[class][title$=rar],img[class][title$=RAR],img[class][title$=tgz],img[class][title$=TGZ],img[class][title$=tar],img[class][title$=TAR]{width:0!important;height:0!important;padding-left:15px!important;padding-top:16px!important;background-position:top left!important;background-image:url('data:image/gif;base64,R0lGODlhDwAQAPcAAAAAAP///1AAAXEvMWMUGWQVGlQSFmIWGmQTGWUUGmUUG1sUGlwVG28aIVQRGFwTGnAaI24bI2UqMGMqMHAtNlcRG2sPJnQSKWkQJncVLHQWLnolPFQPJIEcSAIAASwqK0JAQfj2938HR4wBUoQBTYUCTpQBWpICWXcCSZEDWXgDSpwJYpoKYYsMWaIPZ6IPaOpcsogAVJIBXJICWnoCTJIDW4IDUpMJXpkKYpoLY6AQaJ8QavRjwP9ryf140f970vyX2/+G2f+k5f+98P/+/yclKAEAAq6tsgAABAAAAqOjpf39/62us87P1MbHzPn6/9rb4K6vs8bHy8vO1cTHztjb4gABA6Okpvz9/87P0cTHzNjb4AhgtwBXpwBaqABapwBXoQBXnwBUnAJWnGC4/43M/8jP1QBTlQBWlQBOhwA8aAA7ZwFVkwo3WHjE/tjc39fb3gE8ZgI9ZwdCamjA/4DM/4zQ/wA+Zwc4VpnX/qXd/8PIy67k//T8/vr+//j8/f7//3LqxovuzwCJWgCIWgfdkxXhnC3hpELnrVnnt17qub714gCIVgCIWACGVACCVABwSAGJWQKIVgCEUgBoQAACAQcJCAgKCfb49wACAAABABhPABhOACFTDBlOABpPARg6CBtOABg7Bf7/+/f487i6AdDSAsPFHJWVAH+AANPRApaWApGQAoGAAsbFHSYmJJKPAIB+AwkIBgIBAP/+/V4iClAAAE8AAE8BAE4AAAMAAAEAAFQICGAWFSsrKyYmJggICP///wAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAACH5BAEAAMEALAAAAAAPABAAAAj+ADkwQJCglwICBAogWFArmEMlDhqsMsUKwgUMGTRsmOAwhJQKNGCpQiXChgoUJDpICBaljxkDOXSw2LHCxYscN1oM+NVkiZMYo4YIARLERw8eMCgoAVCFVoRTMmTMOFHDhIwRvEhR0fTmQStcuXAJuHULFy9eTP5M8QUgCQAAuzTp0pQEWLAiWbBo4RKAj548dtzQIVMGz5VdUIh8ceWlC5gwY9CcYQMM054kcNKkWiMnjpo1d9TMaXPkyZQPSDRl2uXhrRErsoK9auJHyiRAiwQFUoTokKFCoIJ92EIEUqlIjBoxIjTI0aNLDn3BoRQrFCdOmzZ98tRJlMNgIOIM7qq0C0AmALMsBQsIADs%3D')!important}";
                //PDF
                css += "img[class][title$=pdf],img[class][title$=PDF]{width:2px!important;height:0!important;padding-left:15px!important;padding-top:16px!important;background-position:0 0!important;background-image:url('" + gicons + "')!important}";
                //IMG
                css += "img[class][title$=tif],img[class][title$=tiff],img[class][title$=jpeg],img[class][title$=JPEG],img[class][title$=TIF],img[class][title$=TIFF],img[class][title$=bmp],img[class][title$=jpg],img[class][title$=gif],img[class][title$=png],img[class][title$=BMP],img[class][title$=JPG],img[class][title$=GIF],img[class][title$=PNG]{width:2px!important;height:0!important;padding-left:15px!important;padding-top:16px!important;background-position:0 -48px!important;background-image:url('" + gicons + "')!important}";
                //ODT
                css += "img[class][title$=odt],img[class][title$=ODT]{width:2px!important;height:0!important;padding-left:15px!important;padding-top:16px!important;background-position:0 -32px!important;background-image:url('" + gicons + "')!important}";
                //ODS
                css += "img[class][title$=ods],img[class][title$=ODS]{width:2px!important;height:0!important;padding-left:15px!important;padding-top:16px!important;background-position:0 -128px!important;background-image:url('" + gicons + "')!important}";
                //PPT
                css += "img[class][title$=ppt],img[class][title$=pps],img[class][title$=PPT],img[class][title$=PPS],img[class][title$=pptx],img[class][title$=ppsx],img[class][title$=PPTX],img[class][title$=PPSX]{width:2px!important;height:0!important;padding-left:15px!important;padding-top:16px!important;background-position:0 -96px!important;background-image:url('" + gicons + "')!important}";
                //ODP
                css += "img[class][title$=odp],img[class][title$=ODP]{width:2px!important;height:0!important;padding-left:15px!important;padding-top:16px!important;background-position:0 -144px!important;background-image:url('" + gicons + "')!important}";
                //TXT
                css += "img[class][title$=txt],img[class][title$=TXT],img[class][title$=rtf],img[class][title$=RTF]{width:2px!important;height:0!important;padding-left:15px!important;padding-top:16px!important;background-position:0 -32px!important;background-image:url('" + gicons + "')!important}";
                //PHP
                css += "img[class][title$=php],img[class][title$=PHP]{width:0!important;height:0!important;padding-left:15px!important;padding-top:16px!important;background-position:top left!important;background-image:url('data:image/gif;base64,R0lGODlhDgAQAPcAAAAAAAd3zQ98zxd8yhF80BN+0RyBzhuB0DWQ1zyU2USZ2kyd21Oh3Vul3mKp4GSs4na15ne25pCQkJaWlru7u4mwzYS+6ZbH7ZrJ7Z3K7ZzL76TP76jO7KLO8KPP8qzT8rLV8bPY9L3d9sfHx8jIyMrKytbW1tfX19nZ2dvb293d3d7e3t/f38Xg9Mbh9cbh9s3k9tXp+Njq+Nrs+ePj4+Tk5Obm5ufn5+jo6Onp6erq6uvr6+zs7O7u7u/v7+Pw+uXx++r0+/Dw8PHx8ff7/vn8/v7+/v///wAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAACH5BAEAAP8ALAAAAAAOABAAAAiuAP8JHEiw4L8cCBHSIKHD4I6HD2uMOHKjII+LF22UOHIEB8EeIEHuMJHiBAqCQlKm9JGDhYoVBIfInElT4IEBBnLq3DngQIEQRYiIAOLBAxARRIqEKEDgQ4wXHWZo0DCjw4sYHwgQ2BDEhYUYMGDEwPDDxQUCAjK0ePBARoQIMjKAeABBQAAFDRAgcJAggYMFDPQG+FeBg+HDiCsIpGCksePHFAZOkEC5MuUJAgMCADs=')!important}";
                //XML
                css += "img[class][title$=XML],img[class][title$=xml]{width:0!important;height:0!important;padding-left:15px!important;padding-top:16px!important;background-position:top left!important;background-image:url('data:image/gif;base64,R0lGODlhDgAQAPcAAAAAAP9muP9xvf9yvf93vv95vv93wP+o1v+t1v+s1/+t2P+x2P+z2f+z2/+13P+33P+43v+73/+/4cPDw8TExMbGxs7Ozs/Pz9bW1tfX19jY2NjY2dra2tnb29vb3Nvc3Nvd3d3d3d3e3t7f397g4P/P4//S5f/V6P/W6//Z7P/a7f/c7f/e7eDg4OHh4eHi4uLj4+Lk5OTk5OTl5ebm5ujo6Onq6urs7Ovt7e3t7ezu7u7v7+7w8O/x8fTv8fDw8PHx8fHy8vHz8/L09PP19fT09PX19fT29vb39/f5+fjz9fvz9/3w9v/y+Pz0+Pz3+f/3+/j4+Pn5+fr6+vv7+/z8/P39/f7+/gAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAACH5BAEAAP8ALAAAAAAOABAAAAjaADOQaPECRgyDMmbIWMhhg40bOHLw2PEjiBAhQYKM6HBDx44dFocIKVLkyJEWH3Tw6AFkCJEjSGAiQfICxMqLMqNEkcIThogeF40c2TmlaFEZI4T4YHAiypQIEFhIeFJFBokSBBAsmbJiQBMoDgygmEHCRIEFTpgEWGEFigIBY1sYUfIgxYEEVq6oaPCEiowWQ6dQqZL3ChUkRYK0aIFEiuDCU4rYcNHCgoskgglfqWKkBgcRFP65cDo47xQgHlpM+CeatGYpOzRUYP0PAwwYCWnQgBHiAu1/AQEAOw==')!important}";
                //EXE
                css += "img[class][title$=exe],img[class][title$=EXE]{width:0!important;height:0!important;padding-left:15px!important;padding-top:16px!important;background-position:top left!important;background-image:url('data:image/gif;base64,R0lGODlhDwAQAPcAAAAAAIAAAACAAICAAAAAgIAAgACAgMDAwMDcwKbK8AAAAAAAv4CAgID//8DAwP///wAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAID//wAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAP/78KCgpICAgP8AAAD/AP//AAAA//8A/wD//////wAAACH5BAEAABoALAAAAAAPABAAAAhPADUIHEiwIIODCBMqZHCgocOHDRkAYLigosWLCyRSvPgAQMeOGg8sXDjxwIOTKFM+CKmyJcuWKV/CPClzZk2YN11OHEkSgM+fQIMWHEowIAA7')!important}";
                //AUDIO
                css += "img[class][title$=mp3],img[class][title$=wma],img[class][title$=wav],img[class][title$=ogg]{width:2px!important;height:0!important;padding-left:15px!important;padding-top:16px!important;background-position:0 -16px!important;background-image:url('" + gicons + "')!important}";
                //HTML
                css += "img[class][title$=html],img[class][title$=htm],img[class][title$=HTML],img[class][title$=HTM]{width:2px!important;height:0!important;padding-left:15px!important;padding-top:16px!important;background-position:0 -160px!important;background-image:url('" + gicons + "')!important}";
                //JAVA
                css += "img[class][title$=java],img[class][title$=JAVA],img[class][title$=jar],img[class][title$=JAR],img[class][title$=class],img[class][title$=CLASS]{width:0!important;height:0!important;padding-left:15px!important;padding-top:16px!important;background-position:top left!important;background-image:url('data:image/gif;base64,R0lGODlhDwAQAPcAAAAAADMzZq07Ma49M2ZmzNdbU9hcVJmZ/+SbeOGdduKcet+eeOCee+OdeeCfd+Keed+gd8zM/////////////////////////////////////////////////////////wAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAACH5BAEAAB8ALAAAAAAPABAAAAh3AD8IHPihAcGDBwUgXMhA4YKFAxt+MGAQYgKFCgZAFCgAAQQBDjYWFPCgQMWDBAgcKGhAQIMDBD4ECCAwgMoIOCPAnCmT5syfPwHQrFnzQASBOgkMtVkTKFCZMQcGMPpBJ02lA6Mq/Skw6oetXrvO9JrS6VivAQEAOw%3D%3D')!important}";
                //VCF
                css += "img[class][title$=vcf],img[class][title$=VCF]{width:0!important;height:0!important;padding-left:15px!important;padding-top:16px!important;background-position:top left!important;background-image:url('data:image/gif;base64,R0lGODlhDwAQAPcAAAAAAIAAAACAAICAAAAAgIAAgACAgMDAwMDcwKbK8BsvMw4rTx0xZxg5eCI3TyE8Yy5DUCtFXzlbSz1ZUC9EcTBEfTlXYz1Tdz9SfjxXfitmZ0BRVUdbUVloS1JyXldwXkhnf1dyf2dvc2x/aR0/mhdDlCJAgihAhC1HjyZIkiVVnzhXhSNOrypMoDddsCtd0jlpzjdo3jtz2EBlg0NhmERvlUh+m1Z6gkJoqUBxr0l1p0V/vUh4uFB2y0aMelalfnGNXGWFeWSWZXaUcG66eTyCnEaIlF+BkVyCnVuEqlaAs1uyjmuJg2yXsnCWrXedrHqfpGK2lXalvnGsvn+ltXi9q3u8vk2MxFCQ42am3n/Mq4aifoCoeaaxf4GIhoWPg4OgkYGioIestI+0spe1pJa3rp2+p5i/vKOlm43RlY7TrJvkq6bAnrTOka/SvKTltbHyup/S2ID//6fbzKfsy7zoycTbkcTft8fun8nxuMjlzcr0yNHvwdvr3gAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAID//wAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAP/78KCgpICAgP8AAAD/AP//AAAA//8A/wD//////wAAACH5BAEAAIgALAAAAAAPABAAAAi6ABEJHMgFSAc0AxMOJGKnywgFIhQOXAKHD5kjKxZIFBiFzhwpPFyk2IjIR5UpV2TEYEGSiQYbOWC8KEES0YYHJ1qQqClQyJAPX3imwdNmywQvG/ukWZOHDZgbETgo1JNHS547ZsIcuVDDQkI4cdTscVMGCpIMNHY4ELgmTpE1Y8c8SUKDAhYVbHsYeVPnjBgnSXBU0IEFAyIrL368mXOGShMlOFCAyNLCwwwTEoIECQFixooGDCDcMBEQADs%3D')!important}";
                //CSS
                css += "img[class][title$=CSS],img[class][title$=css]{width:0!important;height:0!important;padding-left:15px!important;padding-top:16px!important;background-position:top left!important;background-image:url('data:image/gif;base64,R0lGODlhDwAPAPcAAAAAAIAAAACAAICAAAAAgIAAgACAgMDAwMDcwKbK8ExMTGNjY2pqanBwcHFxcXJycnV1dXd3d3x8fH5+fn9/fytimYODg4aGhoeHh6Ojo6urq7S0tLa2tri4uLm5ubu7u7y8vL29vb6+vsDAwMHBwcLCwsPDw8XFxcfHx8jIyMzMzM/Pz9fX197e3uPj4+Xl5e3t7e/v7/Hx8fLy8vPz8/T09Pb29vj4+Pn5+fv7+/39/f7+/v///wAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAID//wAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAP/78KCgpICAgP8AAAD/AP//AAAA//8A/wD//////wAAACH5BAEAAEcALAAAAAAPAA8AAAiWAI8I5ECwIIcNGAQqPMJhxw4dEHXwwKBhIcMcGHFo5HHBRYaFHGyIrEFSh4QJExIOtFGDxgwZMW6wrHGhgs2bOG/CsFCBh8+eP33yqPCCQs+bQ20mrdBCwlGkUCuwiPA06tEVEIAOFaq1QooHOcPaJNFAIQcVKVCcMFHigAgRIMoOPFGChNsQHzx46OBAIYO/gAMzWBAQADs%3D')!important}img[class][title$=JS],img[class][title$=js]{width:0!important;height:0!important;padding-left:15px!important;padding-top:16px!important;background-position:top left!important;background-image:url('data:image/gif;base64,R0lGODlhDwAQAPcAAAAAAIAAAACAAICAAAAAgIAAgACAgMDAwMDcwKbK8AAAAICAAP//AICAgMDAwP///wAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAP/78KCgpICAgP8AAAD/AP//AAAA//8A/wD//////ywAAAAADwAQAAAIcAAbCBxIkCCABg8SPiio8MBBhQ0YPJDoMKFDhAsfDNh4EcCDixknfjxYESTCjQMAqPQ4EmFEkRUbPlzIAGXMlhAlUmQJcqFAABtH4kTYcWLJgwgZHNQZ0+SBAw0APGWJ88HKlQpbPt3KlevVr2ABBAQAOw%3D%3D')!important}";
                //VIDEO
                css += "img[class][title$=mov],img[class][title$=MOV],img[class][title$=wmv],img[class][title$=WMV],img[class][title$=mpeg],img[class][title$=MPEG],img[class][title$=mpg],img[class][title$=MPG],img[class][title$=avi],img[class][title$=AVI]{width:2px!important;height:0!important;padding-left:15px!important;padding-top:16px!important;background-position:0 -112px!important;background-image:url('" + gicons + "')!important}";
                //SVG
                css += "img[class][title$=svg],img[class][title$=svgz]{width:0!important;height:0!important;padding-left:15px!important;padding-top:16px!important;background-position:top left!important;background-image:url('data:image/gif;base64,R0lGODlhDwAQAOebACUnKjg4OD8/P0FBQUpKSg1ZvQxav05OTg1bwhRbuA9dwhJewxRevhVhxSJgsBdixVhYWBlkxlNaZBtlxyljsB1mxx9nyFBedSFpySNpxyNqyi9ptSRryjJpsCZsy1NkfyhuzCxtxzZruCpvzDZuuCtwzTduuSxwzS5xzjJyyzBzzjxyujxyuzJ0zzR10EB0vDV20EJ1tzh40Ud2szp50jx70z1700t5uD5701F6rz991EF+1Vl7qE19wVB9vEN/1VF/wEWB1keC10mC1EiD13B8kV6Bt0uF2FiDwlKEzU2G2U6H2k+H2lCI2lGJ2lKK21yJy1SL3FeN3ViN3VmO3VqO3mSNyVqP3l+O1lyQ3l2Q3V2Q3l6R32CT4GKU4GKU4WOV4WSV4XWUwGaW4maX4miY43KXz2qZ5Gyb5W2b5XGb3m+d5nGe5nOe43ye03Sf5HOf53uf2oGgzHah6Hei6Xui43mj6Xuj5ZCiuYGj33uk6oKk3n2m63+n7ISn4oKo6oeo4ZGozoKq7Yuq3oSr7Yuq44mr6ZaqzIes7o2s34qu74+u55yuyIyw8I6x8ZCx7pSy6pez55O185a29Jm28Z257p+57Z268p2796a/9a3C5v///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////yH+FUNyZWF0ZWQgd2l0aCBUaGUgR0lNUAAh+QQBCgD/ACwAAAAADwAQAAAIzgD/CfwX4MDAgwj/SSgSSFPCgQA+RLJE6ZGhPYMSHRJIYMAFSJkwTXKEqA+dN2qM/IMg4B+gS5IaEeIzJw0ZLVYOuimkSJAeOGjCbIHCCGGcP3bYnPlyJYmYhIvurCnThYoTHwnNVEozhosUJkJeIJSTpw6YLFGUBMGRwsRBJH68VHly5EcNFycybBgoos2UJkR20GgxQsMEBjkEAsGyRIgOGSpAYIiwoACPgT2G2ICBwoOFBwoMOMBzkEWIEhwqNECQoMPDGxRWkIgx42BAADs%3D')!important}";
            } /////////////G-ICONS
            if (msicons === true) {
                css += "img[class][title$=xls],img[class][title$=XLS],img[class][title$=xlsx],img[class][title$=XLSX]{width:0!important;height:0!important;padding-left:15px!important;padding-top:16px!important;background-position:top left!important;background-image:url('data:image/gif;base64,R0lGODlhDwAQAPcAALLC2LHB17DA1q6+1K290qu60aq5z6i2zaa2y6W0ym2wZ2mtYmWnW1+hU1qaSVOTQE2MNkeFLUKAJT57HvP3/u30/ZyrwDdLZf///zNwDfT3/u/0/ZWkubrF1JPCjmSoYFKXSMzay16YVZywmzNtDvT4/e/1/ZOit2eqX+Xs5ZPEjWqsZUKJNXSlcGGgWEeIO9bi1jNpD5Cu1qW83KS73WGiVM/dz5rGlluiWDp9JzJoKMDRwDRjEfP4/uHs/KG63TZKZFiYR5C9i1ieUpbEkTtxInCbbd/p3zReFN/q+5243k+OOTx3HzpvHjZjG0iSPztoHqGznzRYFerx/d3p+5m24EaELIephTlwHjVeGmB+XDRSF9rm+5Wz4j99ITVNGOjv/OLs/Nzo+9bk+o+x4zp3GTRtDjRkEjReEzRTFzRNGTVJGt3o+9Lh+oqu5Jmovujw/enw/efv/OXt/OHr+9fl+s7e+YWs5pamu+Ls+9rn+srb+IGn59rn+9nm+9jl+tbk+9Pi+9Dg+czd+Mnb+cfa+Hyk6dLi+p6435W04pGx4oyv5Iit5YSr5oCn53ul6Hij6////wAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAACH5BAEAAJEALAAAAAAPABAAAAjhACMJBBBAwAACBQwcSCAwkoIFDBo4eAAhgoQJFCxcEKgAg8ePHjNo4NBhowIPH0BgCCFCxAgSJU5cmIkihYoVLFq4eAEjhgwZM2hcqIHBxg0cOXTswMCjhwwfP4AEwSBkCBEcRYwcQfIziRIgS4QwaeJEyBMoUaRskEGlChArIK9gyaJly08uXYB4AQnyCxgxY8gAKZPBTIwzaKSkUbMmjIw2boA0fAMnDhw5c+j8tHNHskA8eX7+1PNzDx/PkThw6ePnD6BAgggVMoT6xCFEVRIpWsTI0SNIqIEIH05ceEAAADs%3D')!important}img[class][title$=doc],img[class][title$=DOC],img[class][title$=docx],img[class][title$=DOCX]{width:0!important;height:0!important;padding-left:15px!important;padding-top:16px!important;background-position:top left!important;background-image:url('data:image/gif;base64,R0lGODlhDwAQAPcAALLC2LHB17DA1q6+1K290qu60aq5z6i2zaa2y6W0ypOr5oml6YCe5nyX2GeK1Vh+0VJ3ykJuxCpit/P3/u30/ZyrwDdLZf///wlLsvT3/u/0/ZWkubrF1Kq+8YOc2mCBzdbc6tzi9FVtpIuk3fT4/e/1/ZOit199w0RquU1qp3eKnJCu1unx/aW83KS73XeR1a+83yFMmjpamMnS4gZCm/P4/unw/OHs/KG63TZKZGd+s111qwU2gjJbtig+bfL2/ubu/N/q+5243lV7zrfI9K260Ag8iOTt/N3p+5m24El0zAgvizhhrvDy+kBmtOHq+9rm+5Wz4jppuAEyeOjv/OLs/Nzo+9bk+o+x49fl+9Lh+oqu5Jmovujw/enw/efv/OXt/OHr+9fl+tPi+s7e+YWs5pamu+Ls+87e+Mrb+IGn59rn+9nm+9jl+tbk+9Pi+9Dg+czd+Mnb+cfa+Hyk6dLi+p6435W04pGx4oyv5Iit5YSr5oCn53ul6Hij6////wAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAACH5BAEAAH8ALAAAAAAPABAAAAjiAP8IBBBAwAACBQwcSCDwjwIFCxg0cPAAQgQJEypYEKjggsePHjFk2MBh44IOHj6A+BBCxAgMJExYmMkghIcTIVCESKECw4oVLVxYeHHhBQoYMUbImEGjxoobOHI4uKADxQ4ePXxcoPFjRRAhOYZcECGDCA8eRS4Y0bACSZIcSi4sYdKEhxOPPH5CiZJDCkiQU6hUuYIlhwQMiGkoNsJjyk8tW3I05NLFS5cvYMJYEUOmjGSBZs5U+Ul6RRo1n/9sgLKGTRs3b+DEmUMntYk6dpLcwZNHz54+flLnGE68+PCAAAA7')!important}img[class][title$=zip],img[class][title$=ZIP]{width:0!important;height:0!important;padding-left:15px!important;padding-top:16px!important;background-position:top left!important;background-image:url('data:image/gif;base64,R0lGODlhDwAQAPcAAAAAAIAAAACAAICAAAAAgIAAgACAgMDAwMDcwKbK8ARLsBJPqRZQpyFbrSNfsChltixquydpxzt6xDqA0DmF1ziZ80OK10mH0U6P2FqU2FuZ11Oa4lOa5F2l61am9Fyr9nGc02Go62as7W2h4G6x7mGz/2i3/3Sk4HCv7nKx5nW38He09HK7/3u88Xi+/6ttDax0HbR8D7J7I/EZAbmFKc+hENSjCNWmFt61AdWrItiuKNq0Ktm/Ktm8L9u5M96+O/bNLPzUMf3VOf3ZR/3aUfzZWPvdZPzebfvedPPkbfzifYKx35S334TD84nJ94vK+ZjC9ZvP9a3b+bTP9rzl++jRh/fvgvzkhfrjj/vnl//4hvr2k//6kP//mfroofrprfrrs//9pP//r/vwvf//ucjY9sfs/fjuyv/3zv//xPn25fT//////wAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAID//wAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAP/78KCgpICAgP8AAAD/AP//AAAA//8A/wD//////wAAACH5BAEAAHcALAAAAAAPABAAAAjBAO8IHNikSQsVJESEEFilhsMqC81QkRKliYoLd2rM2FgjgsePEz5oUFBjxw4ePHr08OHjR4w7S1IoyNElDRkxYcJw0ZLkJZMmM7eoOfMFC5IiQnD4fBIUDZgsSowMCaL0DhOmObY4hSqV6tKgY7xcOUJECJCqTJwouGFFx423N2zYQCuThowXL2B8/AgCRQcFAwUuNFGChQsXHSQEHhgCwgMHDhoAXkw5xELKAzecGJEBgwUKCzBzKDMFygoPFRgEBAA7')!important}img[class][title$=rar],img[class][title$=RAR],img[class][title$=tgz],img[class][title$=TGZ],img[class][title$=tar],img[class][title$=TAR]{width:0!important;height:0!important;padding-left:15px!important;padding-top:16px!important;background-position:top left!important;background-image:url('data:image/gif;base64,R0lGODlhDwAQAPcAAAAAAP///1AAAXEvMWMUGWQVGlQSFmIWGmQTGWUUGmUUG1sUGlwVG28aIVQRGFwTGnAaI24bI2UqMGMqMHAtNlcRG2sPJnQSKWkQJncVLHQWLnolPFQPJIEcSAIAASwqK0JAQfj2938HR4wBUoQBTYUCTpQBWpICWXcCSZEDWXgDSpwJYpoKYYsMWaIPZ6IPaOpcsogAVJIBXJICWnoCTJIDW4IDUpMJXpkKYpoLY6AQaJ8QavRjwP9ryf140f970vyX2/+G2f+k5f+98P/+/yclKAEAAq6tsgAABAAAAqOjpf39/62us87P1MbHzPn6/9rb4K6vs8bHy8vO1cTHztjb4gABA6Okpvz9/87P0cTHzNjb4AhgtwBXpwBaqABapwBXoQBXnwBUnAJWnGC4/43M/8jP1QBTlQBWlQBOhwA8aAA7ZwFVkwo3WHjE/tjc39fb3gE8ZgI9ZwdCamjA/4DM/4zQ/wA+Zwc4VpnX/qXd/8PIy67k//T8/vr+//j8/f7//3LqxovuzwCJWgCIWgfdkxXhnC3hpELnrVnnt17qub714gCIVgCIWACGVACCVABwSAGJWQKIVgCEUgBoQAACAQcJCAgKCfb49wACAAABABhPABhOACFTDBlOABpPARg6CBtOABg7Bf7/+/f487i6AdDSAsPFHJWVAH+AANPRApaWApGQAoGAAsbFHSYmJJKPAIB+AwkIBgIBAP/+/V4iClAAAE8AAE8BAE4AAAMAAAEAAFQICGAWFSsrKyYmJggICP///wAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAACH5BAEAAMEALAAAAAAPABAAAAj+ADkwQJCglwICBAogWFArmEMlDhqsMsUKwgUMGTRsmOAwhJQKNGCpQiXChgoUJDpICBaljxkDOXSw2LHCxYscN1oM+NVkiZMYo4YIARLERw8eMCgoAVCFVoRTMmTMOFHDhIwRvEhR0fTmQStcuXAJuHULFy9eTP5M8QUgCQAAuzTp0pQEWLAiWbBo4RKAj548dtzQIVMGz5VdUIh8ceWlC5gwY9CcYQMM054kcNKkWiMnjpo1d9TMaXPkyZQPSDRl2uXhrRErsoK9auJHyiRAiwQFUoTokKFCoIJ92EIEUqlIjBoxIjTI0aNLDn3BoRQrFCdOmzZ98tRJlMNgIOIM7qq0C0AmALMsBQsIADs%3D')!important}img[class][title$=pdf],img[class][title$=PDF]{width:0!important;height:0!important;padding-left:15px!important;padding-top:16px!important;background-position:top left!important;background-image:url('data:image/gif;base64,R0lGODlhDwAQALMAAOjo6OScnvYtKOhOTd/d3fLy8snBwelycNDQ0GZmZuUQCfkICX9/f/8AAP///////yH5BAEAAA8ALAAAAAAPABAAAAR08D1GayXynbFW812TMNjDdaiiJg75CGi8OgWp3riS7KPEGAYEIgAAIIAGhk+IIAwI0CNBOSE0C8+ideoDELyDQKFgBFAZ3sIBEBB7zV1we0A/1HzjgYFQcAAMa2cAYWRaW2cHdl5RRwhnNEWLVkFnFpYVEQAAOw%3D%3D')!important}img[class][title$=tif],img[class][title$=tiff],img[class][title$=jpeg],img[class][title$=JPEG],img[class][title$=TIF],img[class][title$=TIFF],img[class][title$=bmp],img[class][title$=jpg],img[class][title$=gif],img[class][title$=png],img[class][title$=BMP],img[class][title$=JPG],img[class][title$=GIF],img[class][title$=PNG]{width:0!important;height:0!important;padding-left:15px!important;padding-top:16px!important;background-position:top left!important;background-image:url('data:image/gif;base64,R0lGODlhEAAQAPcAAAAAAIAAAACAAICAAAAAgIAAgACAgMDAwMDcwKbK8AAAAG80KGNDLlhBRFpjdFtkdWBoeWZvfmdwf2R1jXF6imxpt298rX6Hl3OBtHaHun+JtEKT30Sl9nqOwX2Ux3Wk3Xym2XSn5Xa06bE1E7Y6MplbMp9iLLhgMbZ9U8c7HNRCH9pJIulZKu1dLPZtNf51N/53OY59pLaCcLmHeuuCNemGP/KLN/SKN9qPV9+QXsCPfdiSYNKedNagf+WYVP6ORv6GVv6VSf6eePypVP6rVf60WuO/fva9ZezJfP7AYf7OdvXTevbaf4+BromBtYqNt46UoIqQtZKBq5yLp6WFk6mPmrSWkquWq4acxoGbzpKVwJeRwZSYw5WbxZadyIeozYKh1IOi1YKo04ao24eq3ZCszZigy5aj0Zel0pmn1Zys2KS87ae+7qmy9JLD9ZbG9ZvI9Z/K9arA767C76PM9ajP9aTQ/KTR/q3R9anT/rDE8LTH8bbI8bnI87nL8rzM8rDX/rXZ/rrc/sGblNi5heLDgeTFgf7cmPnmhf7lgMDf/svU/tDa5dTe58Th/svl/trh6d7l69Dn/NDn/tXq/tvt/uPo7ejr7+3v8eHw/uz1/vLy8/X19ff39/P5/vn5+fj7/v39/v7+/gAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAID//wAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAP/78KCgpICAgP8AAAD/AP//AAAA//8A/wD//////wAAACH5BAEAAK0ALAAAAAAQABAAAAjfAFuNGUiQTJgxrRIqFCiqYcNQoMaImLCQoUOInjhw2HBh4ZhPD0F50rRoURsNHjsJcfHiB5EkmSpR6kNB4RhOQE7ACFLkkJIhZf5AsLmJxIIRKVSwaLECix8HNjHlKGGCho0jN2p84QM1IZhLPVAwwOFjCZMdYvZ0bZXF0qAZDWTwMIREBwg9az1EuhKjApVCiBJZ+TBnbQdIW5w0kVKFkJEpIeSszdBIEp46dOLAeePGDpu1GBhNeuRIkaBAgPLcWfNAoQU1adCcMeOlCxctUZ5IWAglwgMHwIM/iKAwIAA7')!important}img[class][title$=odt],img[class][title$=ODT]{width:0!important;height:0!important;padding-left:15px!important;padding-top:16px!important;background-position:top left!important;background-image:url('data:image/gif;base64,R0lGODlhDwAQAPcAAAAAAP///62trmJjZPj5+rfK16Oprfb5++3w8nygt6m8yJ6wu3J/h7nN2rHE0OTs8URjdURjdEZicnOdtnGbs2+YsGqRqGCDl0pjcVBkb3mNmYqZonB3e6Srr9PY2woYHxQvPRMtOh1EWBxCVRY0QxxBVBMsORIqNgwcJCJJXSxQYiY+SkBicyExOUpqejBDTUZgbR4mKm2HlJSYmnp8fRAnMhg6ShIrNwwdJRxCVBYzQRUxPhInMSdJWS9OXD9hcTpZaEJjc0Vndyc4QEtrekBUXVZrdXGLl3yTnnqQmmR1fWRxd4ydpTxMUx4lKHaOmImep3WBhsDFx42gp6W0ucDJzJyipPP295eipY+eopebnISHh7u+vp6hocjLy8XIyM3Pz8TGxrm7u7a4uLW3t6qsrHp7e2lqavz9/dvc3Kqrq6anp6OkpJmampaXl5WWlv7+/v39/fz8/Pv7+/r6+vn5+fb29vDw8O7u7u3t7ezs7Ojo6OXl5ePj4+Hh4d3d3dfX19XV1c3NzcvLy8nJycjIyMLCwr+/v7u7u7e3t7KysrCwsKWlpaSkpKGhoZ2dnZycnJubm5qampmZmZaWlpWVlZCQkI+Pj4yMjImJiYaGhoODg4GBgYCAgH5+fnp6enZ2dmZmZgAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAACwAAAAADwAQAAAI9gCruFBh48aMN1s2feKEKUyAh0mAkGiiBdGeOgEG9RFw6CETGB4CyAkwKVOkTn7q0FgTIIsRJShigPp0CZCklAHMcInygscHJ3wC1MkDKtQARme6WEHz8GElRYT+BDLkqU2aAFIMcIjDYMMCBQ6u3NEkBkyRFSdwSLhggcKECQ/oUAqABUMPHUPw2JnTNIAeNwGmEEmhI0ODww0OPBRUJgASISJAQHj79sHDRWQCHGExIkQHOKBDw2n0JYCMHyVMaCjAmnUDAo68BHgSJEeICBVy506AINGYAFCElNixBI/x43gKqQlAxQeIGi0sPWJEnTokNgECAgA7')!important}img[class][title$=ods],img[class][title$=ODS]{width:0!important;height:0!important;padding-left:15px!important;padding-top:16px!important;background-position:top left!important;background-image:url('data:image/gif;base64,R0lGODlhDwAQAPcAAAAAAIAAAACAAICAAAAAgIAAgACAgMDAwMDcwKbK8AoYHwwcJAwdJR4lKB4mKhAnMhInMRIqNhIrNxMsORMtOhQvPRsxKhUxPiExORYzQRY0Qxg6SiY+SjpYKD1dKRxBVBxCVBxCVR1EWCJJXSdJWS9OXDBDTTxMUyxQYjpZaD9hcU9xJk9yJ0BUXUZgbUBic0Jjc0Vnd0pjcUpqektrelZrdWJjZGZmZmlqamR1fXZ2dnB3e3p6enp7e3p8fX5+fluBJlyBJW2HlHWBhnGLl3aOmHqQmnyTnoCuIISzIYS0IYe3IoW1JIe4Iom6IomzM4CAgIGBgYODg4SHh4aGhomJiYyMjI+Pj5CQkJWVlZWWlpaWlpaXl5SYmpebnJmZmZmampqampubm5mbnZycnJ2dnZ6enomep4+eooydpY2gp5eipZ6hoZyipKGhoaOkpKSkpKWlpaanp6Opraqrq6qsrK2trqW0ubCwsLKysrW3t7e3t7a4uLm7u7u7u7u+vr6+vr+/v8LCwsDFx8TGxsDJzMXIyMjIyMnJycjLy8vLy83Nzc3Pz9TU1NXV1dfX19PY29ra2tvc3N3d3djlwd3qxeDtyOPvzujq3+rv3uvy2+Hh4ePj4+Xl5ejo6Orq6uvr6+zs7O3t7fDw8PPz8/b29vf39/n5+fr6+vv7+/z8/Pz9/f39/f///wAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAP/78KCgpICAgP8AAAD/AP//AAAA//8A/wD//////ywAAAAADwAQAAAI9wALzUCxQUIXLVOk8IhihZCph0ZSaDjhxY+nU60UcbIT6GEaF5BaqWr1pYoYKJtO+ZBjCk2NHAsc6OBx5VGYlK16/BliAoKCBp1anRKl44aNODjYtFnVqmmrLHkQTXIk6AcYSa0GzdnBygygSJ9IpRpFpQ+jFhwiMBjTCFQqp6i2mFojg0QGC0iSLHHC11IoLqbU0BiRwYOlVk4OJ15Ux9SRGCIqsFBMGY8eU0RehKAAhK9nJ5fgGDIlRMWHCUEqqWqiuokmN4lMFYEBgsIKSqWU4GaSaQ8fU2difLjQAYlx408wHaJj6k6JCg8wYCkTp3p1Mm9MBQQAOw%3D%3D')!important}img[class][title$=ppt],img[class][title$=pps],img[class][title$=PPT],img[class][title$=PPS],img[class][title$=pptx],img[class][title$=ppsx],img[class][title$=PPTX],img[class][title$=PPSX]{width:0!important;height:0!important;padding-left:15px!important;padding-top:16px!important;background-position:top left!important;background-image:url('data:image/gif;base64,R0lGODlhDwAQAPcAAP////3///7///7+/vf///39/fb///r///n///v7+/X/8en///n5+fP97OX///r68fj4+OL//9/8/+D8//f29vT09PX25Pb08/Pz8/Lx8e/v7+/u7ffs8+7u7uvr6//l5urp6erp6unp6cXx/+fn5+bm5uXl5ePj4/zc1+Lh4d/f3/PczLrn/PjYyd3c3Nzc3Nvb29Tb3vPUw9nZ2djY2PDRxtHR0c3NzPHFrefHrcvLy8nJybXM2cfHx8jFxMbFxcXEw+i+nMXDwd6+rMHBwfSwoea0nua0lLy8vLu5t9S1i7Gxsdykhq+trdykft6ifuudg96hgt2diqmpqeeafuGbddefc6WlpaKiotyPfveHepubm66NfY+Pj46Ojo2NjYyMjImJiexyQYiIiIaGhoCAgMprRcljKchhNNNfJXFxccleJc1ZINJWK8lTF8VTFcNPLrpVCmNjY9VJAlxcXMRFAcZCAsNDAs1AAMJEAME6ALo3ALE5AMkxAE1NTbwzALkzAMQtArgtALksALkqALwnAL4gAK0kADg4OKsbALYWALUUALwQALgQACgoKLwAAK8AAKEAAJ8AAA4ODgICAgAAAP///wAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAACH5BAEAAJYALAAAAAAPABAAAAjaAAEIvJDEh5CDPWgIXCiQxYgFCyTEsFFGzsI4f/QcwjOnjxiBLxypEQipiJEgR5goSTThhg4AdK4AAJRDEqM2WaDsiXCDCCI/lYgQeqIFRyApVPIwBDCFzKAoABTAMeTkDoEUKjAACNNFUBVFDzg8smInAAgSDLZ6KdQAzZozZlDUOeBihtYwXiLxcZOGzZtGjQ6cTYv3w4oWXIbIqGHBwGC1C3kgmIwgRN27XhY22QCAQoIMIkpAADAms8AlowVW8CBiwAAwYBb2WMoQy5aFXyrp3q17UiUkAQEAOw%3D%3D')!important}img[class][title$=odp],img[class][title$=ODP]{width:0!important;height:0!important;padding-left:15px!important;padding-top:16px!important;ackground-position:top left!important;background-image:url('data:image/gif;base64,R0lGODlhDwAQAPcAAAAAAIAAAACAAICAAAAAgIAAgACAgMDAwMDcwKbK8AoYHwwcJAwdJR4lKB4mKhAnMhInMRIqNhIrNxMsORMtOhQvPRUxPiYuMiExORYzQRY0Qxg6SiY+ShxBVBxCVBxCVR1EWCJJXSdJWS9OXDBDTTxMUyxQYjpZaD9hcUZgbUBic0Jjc0Vnd0pjcUpqektrelNkbVZrdWZbVmJjZGZmZmlqamRxd2R1fXZ2dnB3e3p6enp7e3p8fX5+fm2HlHWBhnGLl3aOmHqQmnyTno1CI4NLM51sV4dvZZ19b8RWJ9pgK+RkLelnLuxoL+1xPOd7S+15Se55Se+dd/GXcYCAgIGBgYODg4SHh4aGhomJiYyMjI+Pj5CQkJWVlZWWlpaWlpaXl5SYmpebnJmZmZmampqampubm5ycnJ2dnZ6enomep4+eooydpY2gp5eipZ6hoZyipKGhoaOkpKSkpKWlpaanp6Opraqrq6qsrK2trqW0ubCwsLKysrW3t7e3t7a4uLm7u7u7u7u+vr6+vr+/v+SojeuukvGxlfGylfO0l/S0l/XHtPjGscLCwsDFx8TGxsDJzMXIyMjIyMnJycjLy8vLy83Nzc7R0dXV1dfX19PY29ra2tvc3N3d3fTh2uHh4ePj4+Xl5ejo6Orq6uzs7O3t7e7u7vDw8PPz8/P09Pf39/n5+fr6+vv7+/z8/Pz9/f39/f7+/v///wAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAP/78KCgpICAgP8AAAD/AP//AAAA//8A/wD//////ywAAAAADwAQAAAI+AAhuTCxQUIYL1es6Kii5ZGqh0JOaCghJpCoVbIqgcpD6CGbFJpkuZI1JosZKp9W8aijak2MGwsc4NCxJVOZlLJ2CPpBAoKCBqFkrSqFg8YMOjXewHklq6msLnwmdcLUqAeZVLIc2ckBK82gTaNQtTqFBRAnGBwiMCCSRAmTJk4YsfpyyU0LERkuFDJ0SJGiKU1IgVHV5kWIDDKcNlUUxRIeVUNYgKhwRLEsxnv6qAKi4gMFJLFCh04EZU4kVT5QdJhgBJFr11IWxaGkKsgKDxSKLNm9+4knP39UqWHRwYINU8iTm5J0R5WeERUeYOCCho5162fkqAoIADs%3D')!important}img[class][title$=txt],img[class][title$=TXT],img[class][title$=rtf],img[class][title$=RTF]{width:0!important;height:0!important;padding-left:15px!important;padding-top:16px!important;background-position:top left!important;background-image:url('data:image/gif;base64,R0lGODlhDwAQAPcAAGVlZcnJyU1MTMbGxsPDw7+/vsXFxaqrq4WEg2hoaJOTk76+v2ZmZqanp0tLS4iHhbu7u3FxcKCfnauqpru6ukpKS6empWlpaczMzDExMGppZ6GhoMjIyLGxsmdnZ5STkzo6OoiHhnVzcUxMTIeGhZCQkAAAAP///////wAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAACH5BAEAACgALAAAAAAPABAAAAiBAFFMKLHhwwkRHSJQIKCggAUUKCScaHACwoETFwmcWAAiBIoSJ0KKHMnBAYKPJ0yoVDkywAgSKEfKdAkT5EqWImnGlJnzJcqbN08YEFCT58gBPm0CZYm0qNGQA4j+DCpyqNOnOpWuHIlhxEmQT08UqPDgI4MECTwAWLv2QgYNKAICADs%3D')!important}img[class][title$=php],img[class][title$=PHP]{width:0!important;height:0!important;padding-left:15px!important;padding-top:16px!important;background-position:top left!important;background-image:url('data:image/gif;base64,R0lGODlhDgAQAPcAAAAAAAd3zQ98zxd8yhF80BN+0RyBzhuB0DWQ1zyU2USZ2kyd21Oh3Vul3mKp4GSs4na15ne25pCQkJaWlru7u4mwzYS+6ZbH7ZrJ7Z3K7ZzL76TP76jO7KLO8KPP8qzT8rLV8bPY9L3d9sfHx8jIyMrKytbW1tfX19nZ2dvb293d3d7e3t/f38Xg9Mbh9cbh9s3k9tXp+Njq+Nrs+ePj4+Tk5Obm5ufn5+jo6Onp6erq6uvr6+zs7O7u7u/v7+Pw+uXx++r0+/Dw8PHx8ff7/vn8/v7+/v///wAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAACH5BAEAAP8ALAAAAAAOABAAAAiuAP8JHEiw4L8cCBHSIKHD4I6HD2uMOHKjII+LF22UOHIEB8EeIEHuMJHiBAqCQlKm9JGDhYoVBIfInElT4IEBBnLq3DngQIEQRYiIAOLBAxARRIqEKEDgQ4wXHWZo0DCjw4sYHwgQ2BDEhYUYMGDEwPDDxQUCAjK0ePBARoQIMjKAeABBQAAFDRAgcJAggYMFDPQG+FeBg+HDiCsIpGCksePHFAZOkEC5MuUJAgMCADs=')!important}img[class][title$=XML],img[class][title$=xml]{width:0!important;height:0!important;padding-left:15px!important;padding-top:16px!important;background-position:top left!important;background-image:url('data:image/gif;base64,R0lGODlhDgAQAPcAAAAAAP9muP9xvf9yvf93vv95vv93wP+o1v+t1v+s1/+t2P+x2P+z2f+z2/+13P+33P+43v+73/+/4cPDw8TExMbGxs7Ozs/Pz9bW1tfX19jY2NjY2dra2tnb29vb3Nvc3Nvd3d3d3d3e3t7f397g4P/P4//S5f/V6P/W6//Z7P/a7f/c7f/e7eDg4OHh4eHi4uLj4+Lk5OTk5OTl5ebm5ujo6Onq6urs7Ovt7e3t7ezu7u7v7+7w8O/x8fTv8fDw8PHx8fHy8vHz8/L09PP19fT09PX19fT29vb39/f5+fjz9fvz9/3w9v/y+Pz0+Pz3+f/3+/j4+Pn5+fr6+vv7+/z8/P39/f7+/gAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAACH5BAEAAP8ALAAAAAAOABAAAAjaADOQaPECRgyDMmbIWMhhg40bOHLw2PEjiBAhQYKM6HBDx44dFocIKVLkyJEWH3Tw6AFkCJEjSGAiQfICxMqLMqNEkcIThogeF40c2TmlaFEZI4T4YHAiypQIEFhIeFJFBokSBBAsmbJiQBMoDgygmEHCRIEFTpgEWGEFigIBY1sYUfIgxYEEVq6oaPCEiowWQ6dQqZL3ChUkRYK0aIFEiuDCU4rYcNHCgoskgglfqWKkBgcRFP65cDo47xQgHlpM+CeatGYpOzRUYP0PAwwYCWnQgBHiAu1/AQEAOw==')!important}img[class][title$=exe],img[class][title$=EXE]{width:0!important;height:0!important;padding-left:15px!important;padding-top:16px!important;background-position:top left!important;background-image:url('data:image/gif;base64,R0lGODlhDwAQAPcAAAAAAIAAAACAAICAAAAAgIAAgACAgMDAwMDcwKbK8AAAAAAAv4CAgID//8DAwP///wAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAID//wAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAP/78KCgpICAgP8AAAD/AP//AAAA//8A/wD//////wAAACH5BAEAABoALAAAAAAPABAAAAhPADUIHEiwIIODCBMqZHCgocOHDRkAYLigosWLCyRSvPgAQMeOGg8sXDjxwIOTKFM+CKmyJcuWKV/CPClzZk2YN11OHEkSgM+fQIMWHEowIAA7')!important}img[class][title$=mp3],img[class][title$=wma],img[class][title$=wav],img[class][title$=ogg]{width:0!important;height:0!important;padding-left:15px!important;padding-top:16px!important;background-position:top left!important;background-image:url('data:image/gif;base64,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')!important}img[class][title$=html],img[class][title$=htm],img[class][title$=HTML],img[class][title$=HTM]{width:0!important;height:0!important;padding-left:15px!important;padding-top:16px!important;background-position:top left!important;background-image:url('data:image/gif;base64,R0lGODlhDwAQAPcAAPv7/e7y+vH0+vr7/fn6/OTr+Onv+uzx+uDp+Ojv+ubt+Onv+fP2+9/p+OHq9+rw+ePs+Ovx+e7z+ubu+PH1+ujv9vP3+6vG3rnQ5bvR5d7p8zR0qy5omDp4rTNqmDlsmGCWw2udyHChyXOfxX+pzImx0oyy05i72Z2+2bPM4rTN4rfP5L7U58jb68fa6tzo8gBVl26gx3uozKDA2afF3eXu9HxwPoR0PHxvPol2O4JxPH9wPZN7OY13OaWENKCCNZx/NpZ8N7eZS+DIj7KKMKmFM8CZPdSyaNSyadq9fNWyaf///////wAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAACH5BAEAAEwALAAAAAAPABAAAAjBAJkIHEiw4EAiCBMiNMjECICHDwkgIWKwRAcPHUCkGJBECcWBHzZkWLJERQcMQ5IcKSIQRAeSFUi6GGGBgQUfTGbA0LCkgwkPIZZ4oCCAwg8mMTgsAQFiyYegHiQEkAAEqVIYL5bAaKHBw4EIB4IwkXF1yQkYQlssWMuDyQUPNU54KMGBw4oSCiYo6CGQhAgWPEmiOFEAQoEcA2nIYApCxoMHDiLfICjEQALLCBo0yKyD4A4coG3gsCEaxw6GqJkEBAA7')!important}img[class][title$=java],img[class][title$=JAVA],img[class][title$=jar],img[class][title$=JAR],img[class][title$=class],img[class][title$=CLASS]{width:0!important;height:0!important;padding-left:15px!important;padding-top:16px!important;background-position:top left!important;background-image:url('data:image/gif;base64,R0lGODlhDwAQAPcAAAAAADMzZq07Ma49M2ZmzNdbU9hcVJmZ/+SbeOGdduKcet+eeOCee+OdeeCfd+Keed+gd8zM/////////////////////////////////////////////////////////wAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAACH5BAEAAB8ALAAAAAAPABAAAAh3AD8IHPihAcGDBwUgXMhA4YKFAxt+MGAQYgKFCgZAFCgAAQQBDjYWFPCgQMWDBAgcKGhAQIMDBD4ECCAwgMoIOCPAnCmT5syfPwHQrFnzQASBOgkMtVkTKFCZMQcGMPpBJ02lA6Mq/Skw6oetXrvO9JrS6VivAQEAOw%3D%3D')!important}img[class][title$=vcf],img[class][title$=VCF]{width:0!important;height:0!important;padding-left:15px!important;padding-top:16px!important;background-position:top left!important;background-image:url('data:image/gif;base64,R0lGODlhDwAQAPcAAAAAAIAAAACAAICAAAAAgIAAgACAgMDAwMDcwKbK8BsvMw4rTx0xZxg5eCI3TyE8Yy5DUCtFXzlbSz1ZUC9EcTBEfTlXYz1Tdz9SfjxXfitmZ0BRVUdbUVloS1JyXldwXkhnf1dyf2dvc2x/aR0/mhdDlCJAgihAhC1HjyZIkiVVnzhXhSNOrypMoDddsCtd0jlpzjdo3jtz2EBlg0NhmERvlUh+m1Z6gkJoqUBxr0l1p0V/vUh4uFB2y0aMelalfnGNXGWFeWSWZXaUcG66eTyCnEaIlF+BkVyCnVuEqlaAs1uyjmuJg2yXsnCWrXedrHqfpGK2lXalvnGsvn+ltXi9q3u8vk2MxFCQ42am3n/Mq4aifoCoeaaxf4GIhoWPg4OgkYGioIestI+0spe1pJa3rp2+p5i/vKOlm43RlY7TrJvkq6bAnrTOka/SvKTltbHyup/S2ID//6fbzKfsy7zoycTbkcTft8fun8nxuMjlzcr0yNHvwdvr3gAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAID//wAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAP/78KCgpICAgP8AAAD/AP//AAAA//8A/wD//////wAAACH5BAEAAIgALAAAAAAPABAAAAi6ABEJHMgFSAc0AxMOJGKnywgFIhQOXAKHD5kjKxZIFBiFzhwpPFyk2IjIR5UpV2TEYEGSiQYbOWC8KEES0YYHJ1qQqClQyJAPX3imwdNmywQvG/ukWZOHDZgbETgo1JNHS547ZsIcuVDDQkI4cdTscVMGCpIMNHY4ELgmTpE1Y8c8SUKDAhYVbHsYeVPnjBgnSXBU0IEFAyIrL368mXOGShMlOFCAyNLCwwwTEoIECQFixooGDCDcMBEQADs%3D')!important}img[class][title$=CSS],img[class][title$=css]{width:0!important;height:0!important;padding-left:15px!important;padding-top:16px!important;background-position:top left!important;background-image:url('data:image/gif;base64,R0lGODlhDwAPAPcAAAAAAIAAAACAAICAAAAAgIAAgACAgMDAwMDcwKbK8ExMTGNjY2pqanBwcHFxcXJycnV1dXd3d3x8fH5+fn9/fytimYODg4aGhoeHh6Ojo6urq7S0tLa2tri4uLm5ubu7u7y8vL29vb6+vsDAwMHBwcLCwsPDw8XFxcfHx8jIyMzMzM/Pz9fX197e3uPj4+Xl5e3t7e/v7/Hx8fLy8vPz8/T09Pb29vj4+Pn5+fv7+/39/f7+/v///wAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAID//wAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAP/78KCgpICAgP8AAAD/AP//AAAA//8A/wD//////wAAACH5BAEAAEcALAAAAAAPAA8AAAiWAI8I5ECwIIcNGAQqPMJhxw4dEHXwwKBhIcMcGHFo5HHBRYaFHGyIrEFSh4QJExIOtFGDxgwZMW6wrHGhgs2bOG/CsFCBh8+eP33yqPCCQs+bQ20mrdBCwlGkUCuwiPA06tEVEIAOFaq1QooHOcPaJNFAIQcVKVCcMFHigAgRIMoOPFGChNsQHzx46OBAIYO/gAMzWBAQADs%3D')!important}img[class][title$=JS],img[class][title$=js]{width:0!important;height:0!important;padding-left:15px!important;padding-top:16px!important;background-position:top left!important;background-image:url('data:image/gif;base64,R0lGODlhDwAQAPcAAAAAAIAAAACAAICAAAAAgIAAgACAgMDAwMDcwKbK8AAAAICAAP//AICAgMDAwP///wAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAP/78KCgpICAgP8AAAD/AP//AAAA//8A/wD//////ywAAAAADwAQAAAIcAAbCBxIkCCABg8SPiio8MBBhQ0YPJDoMKFDhAsfDNh4EcCDixknfjxYESTCjQMAqPQ4EmFEkRUbPlzIAGXMlhAlUmQJcqFAABtH4kTYcWLJgwgZHNQZ0+SBAw0APGWJ88HKlQpbPt3KlevVr2ABBAQAOw%3D%3D')!important}img[class][title$=wmv],img[class][title$=WMV],img[class][title$=mpeg],img[class][title$=MPEG],img[class][title$=mpg],img[class][title$=MPG],img[class][title$=avi],img[class][title$=AVI]{width:0!important;height:0!important;padding-left:15px!important;padding-top:16px!important;background-position:top left!important;background-image:url('data:image/gif;base64,R0lGODlhDwAPAOetAAsbcAYhdRszhCdCjD1MVENMTyxOpUFSW0JTa0RWbENYa0dWbzhTqH5OcFRje01oplNvkFJxk1dtt2N/g0l95E2A3m2OPFaEsjmpSEifVd9WSb5lYmaIrHaEmG2D2KOIKn2KqHSI0HiJzYiOi2ecm3+QqXCO43CS23CU05ucN4OYnpiQoXic2XyhyX6hxnC2fMKdKHKj8JedsJWfrF6w76yieHy5np6ksp+ksp+ks5+ktMWYmqGmtbChqoaq7qGntmrRcpKp6JWuyeOSjJar2Jer17Omrqaruqasupit5Juw2pyx3pi25Z2057S6lbmyuqW23da/K6a45NzCJuSnq6O786K89IjdjrW34Ki77rW8x6m87qq87qW+8au96be9yaq97au+6ay97qfC4ay+6bHB062+7qXE5q6+7q6+7+ysp7y/x6TF66TF7NPFdrHE263C9ajH677CzfSzr8LG0rjP6bPQ87rR6bLT+rXT+LXU+rXW9bbV+rvU9rjW+dDT2bvY+sXU9dPV2r/a+snX9NTW3cPc+s/Y9Mvc7sjc+8/b7tHc6dXb5czd+cjf+9Tg7tvd7tXg7/PW19rf687j+9Dj+dbk8tLl/OPh5dfn9tbo9tfo/OHl99Ls/tjr+d3p+trq/dXu/9nt/Ojq7N/s/ebq9+Lv/eju++fx/evz/uv0/+z0/e/2/f///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////yH5BAEKAP8ALAAAAAAPAA8AAAjhAP8JHEiw4MBQnUR5ymTp0aI7ZUYR1ERnjRZGq1Kh2kNDyMAnO9Q4ufJCRSRTfWKc+PKvx5A5kiC9sQFkAiJQm9L8wLSBSqlPpBJVIZGhRKVLaHIY0YAlEAsUTKyEwKCgDiUzOVY0CNJFQAAAEjxYODDGkZgcMgw0aTTggRI4ImAgOGMITI4/DEycUsRKFaEaHyLEGcQlxz8QFXwc4lTITZQCLewA2mL4X4cLFEZMSUGAAxs/fLJU/jfDwYIEEFy0yaMHTxYdAydBKUJkiRQvZMJ4SXKEoBweN27gGD4ciaCAADs%3D')!important}img[class][title$=ics]{width:0!important;height:0!important;padding-left:15px!important;padding-top:16px!important;background-position:top left!important;background-image:url('data:image/gif;base64,R0lGODlhDwAQAKU5AAp86wh8+Qt/5GloZAiC8u4xM2tsZ25wbG9wbHN1cnN2cf8/P3Z7d3d7d3uCfwyl/4CJhoGJhYaQjIaQjYqXlIuXlJCempCem9CDiZSkopSlopiqqMqUmpirqJ2wrZ2xrWzB9J+0sZ+0sqC0saC0sp+1sZ+1sqC1saC1sm/M9G7N9G7O9LnFzf+qqv/AwOXw/ebw/ejx/ev0/fD1/vT4/vj6//z9//z+//7+/////////////////////////////yH+FUNyZWF0ZWQgd2l0aCBUaGUgR0lNUAAh+QQBCgA/ACwAAAAADwAQAAAGiMCfcEgs/kgok6gkOpFEodHp9PuArtgs1rMRpFSPFWFMJgA6moB6zV5nLLi4fC6/VHA5OWvPZ+EoEzY3NoQsORgLBS0sNhIQNX17BRwcBSw1EQ40hpw5BS4cCyw0Dg0zkSwYBQUYLDMMCjKdszK1CQgxqHwxvAcGMC8wwsPEMAYDyMnKy0bNQkEAOw%3D%3D')!important}img[class][title$=mov],img[class][title$=MOV]{width:0!important;height:0!important;padding-left:15px!important;padding-top:16px!important;background-position:top left!important;background-image:url('data:image/gif;base64,R0lGODlhDAAQAPcAAAAAABCL3QmN5xKR5RKa6RmW5hyT4yaT4yOb5ySk7C+i502a1VKe3Faw3U+v6k685VGq5mik2Hyv3X+/3WSv5mi+4XCx4nCx53O243aw4nK65Hq04p+goaqqqq6pqq6sqq6vr6Cuuq+vsK+wsrGxsLGxsbS1tbS1tra4uLi2tbm5urm7vIy33o7A3ZzG3YHA6YjB4o7C44vI45/G5a7H4qvW6bDM4sHAwcDBwsPDw8HDxMPExcTFxMXFxcbGxsfHx8bHyMfIyMfIycjGxcnHycnIx8jIyMjJycrLysrKy8vMzMzLys/Lzs3Ny87Oy87NzM3Mzc/Pzs7Oz8/P0M/S0cvR2tDPz9LS0tLT09PT1NPU09XV1dXW1NXW1dbW1tXW19bZ2tnY19jY2NnZ2dra2dra2tja3Nnd3tzc3N7e38DU5MfY5sba6dDc6d/e5t/g3t/g397i4t/k6N3o7uDh3uDg3+Dh4OLi4eLi4uPk4+Xk4+fl5OXk5ebn6+Xp6uXo7ujm5enq6u3q6e/s7O/t7+308fDx8PHy8fLy8vP19PT09Pb29fb29vf39/j49/j4+Pn5+fr6+Pn6+fr7+wAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAACH5BAEAAP8ALAAAAAAMABAAAAjVAMl48bLlyhQjOf4p/LdDTJ46acRkwYFiYQ8ie/TQeRPGSQo+CoU08dMHkBswXz6MKPHPCBlBcSRAcBAhhIcOIoxQGcQAwYQWLxZUWXJCCpM2AVz8sdDAAIsnK5KYUSOAzRoMcg5sCKMDypk5BTIQKkRjgA00PqxwWRQjAYULCgjMGPNDyhlGjGpUeCBDA4w0SZDgaRRJ0qRHjiAtsqNkSpdDihAFOpTIUKAyR6JgUcGhww0QPEyQ+FL3Dh4jWIzw2aIFChwpYpIUCWIEiBAjQ4AkgRIQADs=')!important}img[class][title$=svg],img[class][title$=svgz]{width:0!important;height:0!important;padding-left:15px!important;padding-top:16px!important;background-position:top left!important;background-image:url('data:image/gif;base64,R0lGODlhDwAQAOebACUnKjg4OD8/P0FBQUpKSg1ZvQxav05OTg1bwhRbuA9dwhJewxRevhVhxSJgsBdixVhYWBlkxlNaZBtlxyljsB1mxx9nyFBedSFpySNpxyNqyi9ptSRryjJpsCZsy1NkfyhuzCxtxzZruCpvzDZuuCtwzTduuSxwzS5xzjJyyzBzzjxyujxyuzJ0zzR10EB0vDV20EJ1tzh40Ud2szp50jx70z1700t5uD5701F6rz991EF+1Vl7qE19wVB9vEN/1VF/wEWB1keC10mC1EiD13B8kV6Bt0uF2FiDwlKEzU2G2U6H2k+H2lCI2lGJ2lKK21yJy1SL3FeN3ViN3VmO3VqO3mSNyVqP3l+O1lyQ3l2Q3V2Q3l6R32CT4GKU4GKU4WOV4WSV4XWUwGaW4maX4miY43KXz2qZ5Gyb5W2b5XGb3m+d5nGe5nOe43ye03Sf5HOf53uf2oGgzHah6Hei6Xui43mj6Xuj5ZCiuYGj33uk6oKk3n2m63+n7ISn4oKo6oeo4ZGozoKq7Yuq3oSr7Yuq44mr6ZaqzIes7o2s34qu74+u55yuyIyw8I6x8ZCx7pSy6pez55O185a29Jm28Z257p+57Z268p2796a/9a3C5v///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////yH+FUNyZWF0ZWQgd2l0aCBUaGUgR0lNUAAh+QQBCgD/ACwAAAAADwAQAAAIzgD/CfwX4MDAgwj/SSgSSFPCgQA+RLJE6ZGhPYMSHRJIYMAFSJkwTXKEqA+dN2qM/IMg4B+gS5IaEeIzJw0ZLVYOuimkSJAeOGjCbIHCCGGcP3bYnPlyJYmYhIvurCnThYoTHwnNVEozhosUJkJeIJSTpw6YLFGUBMGRwsRBJH68VHly5EcNFycybBgoos2UJkR20GgxQsMEBjkEAsGyRIgOGSpAYIiwoACPgT2G2ICBwoOFBwoMOMBzkEWIEhwqNECQoMPDGxRWkIgx42BAADs%3D')!important}";
            } /////////////MS-ICONS
            // Grey filter
            if (bwicons === true) {
                css += "img.xL,img.yE,img.f.gW{-webkit-filter: grayscale(1)}";
                css += ".aeJ .ae4 table.cf tr:hover img.xL,.aeJ .ae4 table.cf tr:hover img.yE,img.xL:hover,img.yE:hover,img.f.gW:hover{-webkit-filter: grayscale(0)}";
            }
            ///////////// Inject CSS
            var heads = document.getElementsByTagName("head");
            if (heads.length > 0) {
                var node = document.createElement("style");
                node.type = "text/css";
                node.appendChild(document.createTextNode(css));
                heads[0].appendChild(node);
            }
            //---- END INJECT CSS ----//
        }); //canvas_frame
    }); //end options
});

// Added by Larry Stanfield --

$(window).ready(function(){

	Accordion();
	scrollToTop();
	gamesHoverOver();
    mobileMenu();
    // useFlowType();

});

function Accordion(){

	$('#accordion').collapse({
	  toggle: true
	});

}

function scrollToTop(){

	$("#jumptotop a").click(function() {
		$('html, body').animate({
			scrollTop : $("#container").offset().top - 100
		}, 1000);
        return false;
	});
}

function gamesHoverOver(){

	$("div.-overlay").hover(

		function(){
			$(this).find("a").removeClass("-hide");
		},
		function(){
			$(this).find("a").addClass("-hide");
		}

		);
}

function mobileMenu(){

    $("a.-content--mobile").click(function(){
        if( $(this).parent().find('ul').hasClass('-remove') ){
            $(this).parent().find('ul').removeClass('-remove');
        } else{
            $(this).parent().find('ul').addClass('-remove');
        }
    });

}


function useFlowType(){

    $('body').flowtype({
        minimun: 500,
        maximum : 1366
    });

}

var clock;
window.cookieconsent_options = {
    "message":"This website uses cookies to ensure you get the best experience on our website",
    "dismiss":"Got it!",
    "learnMore":"More info",
    "link":"cookies",
    "theme":"dark-floating"
};

function camelize(str) {
    return str.replace(/(?:^\w|[A-Z]|\b\w)/g, function(letter, index) {
        return index == 0 ? letter.toLowerCase() : letter.toUpperCase();
    }).replace(/\s+/g, '');
}

function getRandomNumber(min, max) {
    return Math.floor(Math.random() * (max - min)) + min;
}

function populateConfig(CONFIG) {
    $(".data[data-for='" + CONFIG.name + "']").each(function() {
        var el = $(this);
        var data = el.data();
        var keys = Object.keys(data);
        var forIndex = keys.indexOf("for");
        var identifierIndex = keys.indexOf("identifier");

        if(forIndex >= 0) { keys.splice(forIndex, 1); }
        if(identifierIndex >= 0) { keys.splice(identifierIndex, 1); }

        keys.forEach(function(key) {
            var value = data[key];
            var splitKey = key.replace(/([A-Z])/g, " $1").split(" ");
            var identifier = splitKey.shift();
            var entity = splitKey.pop();

            if(CONFIG.identifier == identifier) {
                entity = camelize(entity);
                var obj = splitKey.reduce(function(obj, keyPart) {
                    if(CONFIG.keyConverter.hasOwnProperty(keyPart)) {
                        keyPart = CONFIG.keyConverter[keyPart];
                    }
                    keyPart = camelize(keyPart);

                    if(obj.hasOwnProperty(keyPart)) {
                        return obj[keyPart];
                    } else {
                        return {}
                    }
                }, CONFIG);

                obj[entity] = value;
            }
        });
    });
}

function initDataTable() {
    $(function() {
        var V = {
            selectors: {
                table: "table.data-table",
                headers: "thead tr th",
                rows: "tbody tr"
            },
            column: {
                link: "Link"
            }
        }
        $(V.selectors.table).each(function() {
            var el = $(this);
            var url = el.data("url");
            if(typeof url == "undefined") {
                url = window.location;
            }
            var parameters = el.data("parameters");
            if(typeof parameters == "undefined") {
                parameters = "";
            }

            var headers = el.find(V.selectors.headers);
            var headerNames = headers.toArray().reduce(function(carry, el) {
                carry.push($(el).text());
                return carry;
            }, []);

            $.fn.dataTable.ext.errMode = function(dataTable, number, error) { /* Handle DataTable Errors*/ };
            var table = el.DataTable({
                searching: false,
                serverSide: true,
                processing: true,
                ordering: false,
                lengthChange: false,
                language: {
                    processing: "Loading..."
                },
                ajax: {
                    url: url + "?" + parameters
                },
                "columnDefs": [ {
                    "targets": '_all',
                    "createdCell": function (td, cellData, rowData, row, col) {
                        var table = el;
                        var trClass = table.data("trClass"),
                            theadClass = table.data("theadClass"),
                            width = table.data("width");

                        if(!!width) { width = "inherit"; }

                        table.css({ width: "100%" });
                        table.find("thead").addClass(theadClass);
                        table.find("tr").addClass(trClass);

                        if(headerNames[col] === V.column.link) {
                            $(td).hide();
                        }
                        if(typeof url == "undefined") {
                            url = window.location;
                        }
                        $(td).parent().addClass("pointer");

                        //$(td).parent().addClass("col-sm-3");
                        $(td).attr("data-label", headers.get(col).innerHTML);
                    }
                } ]
            });

            if(headerNames.indexOf(V.column.link) != -1) {
                table.on("click", V.selectors.rows, function () {
                    var data = table.row(this).data();
                    window.location = data[headerNames.indexOf(V.column.link)];
                });
            }
        });
    });
}

$(document).ready(function() {
    initTabs('body');
    initDataTable();
    /*
     * FLIP CLOCK CODE
     */
    $("body").iealert();

    $(".form--autotick input[type=checkbox]").prop('checked', true);

    if($(".clock").length > 0) {
        // Grab the current date
        var currentDate = new Date();
        var time = $(".clock").data("time");
        // Set date in the future using the below format.
        // Date(year, month, day, hours, minutes, seconds, milliseconds);
        var futureDate = Date.parse(time);

        // Calculate the difference in seconds between the future and current date
        var diff = futureDate.getTime() / 1000 - currentDate.getTime() / 1000;

        // Instantiate a coutdown FlipClock
        clock = $('.clock').FlipClock(diff, {
            clockFace: 'DailyCounter',
            countdown: true,
            showSeconds: false
        });
    }

    /*
     * ACCORDION CODE
     * - changes the icon between minus and plus when it is collapsed and non-collapsed
     */
    $('.collapse').on('shown.bs.collapse', function(){
        $(this).parent().find(".glyphicon-plus-sign").removeClass("glyphicon-plus-sign").addClass("glyphicon-minus-sign");
    }).on('hidden.bs.collapse', function(){
        $(this).parent().find(".glyphicon-minus-sign").removeClass("glyphicon-minus-sign").addClass("glyphicon-plus-sign");
    });

    function scanForHideables() {
        $(".js.edit, .js.change-password, .js.cancel").on("click", function() {
            $(".box.player, .box.edit-form").toggleClass("hide")
        });
    }
    scanForHideables();



    $(".js[data-toggle]").on("click", function() {
        var el = $(this);
        var allTargets = el.data("toggle");

        if(typeof allTargets !== "undefined") {
            var targets = allTargets.split(",");
            targets.forEach(function(target) {
                target = target.trim();
                $(target).slideToggle();
            });
        }
    });

    $(".form-controls .js.cancel").on("click", function() {
        var el = $(this);
        el.parents("form")[0].reset();
    });

    (function() {
        var balanceBox = $("[data-api='wallet.fetch']");
        var loc = location.origin;
        var updateWallet = function(callback) {
            if(balanceBox.length > 0) {
                $.getJSON(loc + "/api/wallet").then(function(json) {
                    if(typeof json !== typeof {}) { return false; }
                    $("[data-api^=wallet]").each(function() {
                        var el = $(this);
                        var key = el.data("api");

                        var components = key.split(".");
                        var walletKey = components.pop();

                        if(json.hasOwnProperty(walletKey)) {
                            (function() {
                                var value = json[walletKey];

                                value = value.toString();

                                if(value.indexOf(".") >= 0 && value.length - 1 - value.indexOf(".") == 1) {
                                    value = value.concat("0");
                                } else if(value.indexOf(".") <= 0 ) {
                                    value = value.concat(".00");
                                }

                                el.html(value);
                            })();
                        }
                    });

                    return true;

                }).then(function(cont) {
                    if(cont && typeof callback === "function") {
                        setInterval(callback, 60 * 1000);
                    }
                });
            }
        };
        updateWallet(updateWallet);
    })();

    (function() {
        var updateSession = function() {
            $.getJSON(location.origin + "/api/session");
        }
        setInterval(updateSession, 60 * 1000);
    })();


    // Refactored into stars.js

    $(function() {
        $(".picker").on("click", ".textbutton.add_row, .picker__remove, .drawpurchase__luckydipbox", function() {
            $(".drawpurchase__buybutton").css('pointer-events', 'auto');
        }).on("focusout", ".picker__number, .picker__bonus__number, #TicketPickerForm_LottoForm_draws", function() {
            $(".drawpurchase__buybutton").css('pointer-events', 'auto');
        }).on("click", ".drawpurchase__buybutton", function(e) {
            $(this).css('pointer-events', 'none');
        });
    });

    $(function() {
        $(".button.submit").on("click", function() {
            var input = $(this).parents("form").find("input.action[type=submit]");
            input.click();
            input.prop("disabled", true);
        });
    });

    $(function() {
        $(document).on('keyup', "input[type='tel']", function(event) {
           var v = this.value;
           if($.isNumeric(v) === false) {
                //chop off the last char entered
                this.value = this.value.slice(0,-1);
           }
        });
    });

    $(function() {
        var V = {
            searchTerm: "[data-ticket-picker]",
            data: "ticketPicker",
            reliantData: "ticket",
            terms: {
                balance: "tickets.balance",
                perTicket: "tickets.perTicket",
                cost: "tickets.cost",
                amount: "tickets.amount",
                total: "tickets.total"
            }
        }
        var results = $(V.searchTerm);
        if(results.length > 0) {
            var updateSummary = function() {
                var el = $(this);
                var tickets = el.val();
                var term = el.data(V.data);
                var c = (function(term, value) {
                    return [ "[", term, "='", value, "']"].join("");
                }).bind(this, term);
                var els = {
                    balance: $(c(V.terms.balance)),
                    perTicket: $(c(V.terms.perTicket)),
                    cost: $(c(V.terms.cost)),
                    amount: $(c(V.terms.amount)),
                    total: $(c(V.terms.total))
                }

                var costPerTicket = els.perTicket.text();
                var balance = els.balance.text().replace("£", "");

                els.amount.text(parseFloat(tickets).toFixed(2));
                els.cost.text("" + parseFloat(costPerTicket * tickets).toFixed(2) + "t");
                els.total.text("" + parseFloat(balance - (costPerTicket * tickets)).toFixed(2) + "t");
            };
            results.on("change", updateSummary);
            updateSummary.call(results[0]);
        }
    });

    // Taken out into form/top_up_form_script.js

    /*
     * TODO: Generify this for easier processing
     */


    $(function() {
        var form = $("form[data-endless=true]");
        var V = {
            selector: ".member-invite",
            counter: 0,
            add: function() {
                V.fieldset.append(V.newMemberInvite());
            },
            newMemberInvite: function() {
                var nu = V.memberInvite.clone();
                nu.find("input").each(V.processField)
                V.counter++;
                return nu;
            },
            processField: function() {
                var field = $(this);
                field.attr("name", "group_" + V.counter + "_" + field.attr("name"));
                field.on("change", V.change);
            },
            change: function() {
                var field = $(this);
                field.parents(V.selector).find("input").off("change");
                V.add();
                return false;
            }
        };
        if(form.length > 0) {
            V.fieldset = form.find("fieldset");
            V.memberInvite = form.find(V.selector).first().clone();
            form.find(V.selector).remove();
            V.add();
        }
    });

    $(function() {
        var V = {
            selector: {
                form: ".js.repayment-form",
                amount: "[name=amount]",
                collect: "[name=collect]",
                bankDetails: ".bank-details"
            },
            threshold: 200,
            callback: {
                click: function(collect, bankDetails) {
                    if(collect[0].checked == true) {
                        bankDetails.slideUp();
                    } else {
                        bankDetails.slideDown();
                    }
                }

            }
        }

        if($(V.selector.form).size() > 0) {
            (function(V) {
                var amount = $(V.selector.amount),
                    collect = $(V.selector.collect),
                    bankDetails = $(V.selector.bankDetails);

                var callback = V.callback.click.bind(this, collect, bankDetails);

                amount.on("change", function() {
                    if(amount.val() >= V.threshold) {
                        collect[0].checked = true;
                        collect[0].disabled = true;
                    } else {
                        collect[0].disabled = false;
                    }
                    callback();
                })

                collect.on("click", callback);

            })(V);
        }
    });

    $(document).ready(function() {
        return (function() {
            var el, elements, _i, _len, _results;
            elements = $('.resize');
            if (elements.length < 0) {
                return;
            }
            _results = [];
            for (_i = 0, _len = elements.length; _i < _len; _i++) {
                el = elements[_i];
                _results.push((function(el) {
                    var resizeText, _results1;
                    resizeText = function() {
                        var elNewFontSize;
                        elNewFontSize = (parseInt($(el).css('font-size').slice(0, -2)) - 1) + 'px';
                        return $(el).css('font-size', elNewFontSize);
                    };
                    _results1 = [];
                    while (el.scrollHeight > el.offsetHeight) {
                        _results1.push(resizeText());
                    }
                    return _results1;
                })(el));
            }
            return _results;
        })();
    });

    $(document).ready(function() {
       $(".js[data-scrollTo]").click(function() {
           var el = $(this);
           if(el.data("scrollto") == "top") {
               scrollTo(0,0);
           }
       })
    });

    var paginatedElements = [];
    function pagination() {
        var elements = $("[data-pagination]")

        elements.each(function() {
           var el = $(this);

            var element = el.data("paginationElement");
            var total = el.data("paginationTotal");
            var link = el.data("pagination");
            var clear = el.data("paginationClear");
            var page = el.data("paginationSize");
            var additional = el.data("paginationAdditional") || "";
            var parent = el.data("paginationParent") || false;

            // var htmlContainer = $("html");

            var pageSize = page || 4;
            if(total > 1) {

                var paginationElement;

                paginationElement = el.parent().find(element);

                if(paginatedElements.indexOf(paginationElement) == -1) {
                    paginationElement.bootpag({
                        total: total,
                        maxVisible: 10,
                        leaps: false
                    }).on("page", function (e, page) {
                        // htmlContainer.block({message: "Processing..."});
                        el.block({message: "Loading..."})
                        $.ajax(link + "?page=" + page + "&size=" + pageSize + "&" + additional)
                            .done(function (data) {
                                console.log(data);
                                el.find(".content").html(data);
                                // htmlContainer.unblock();
                                el.unblock();
                            });
                    });

                    paginatedElements.push(paginationElement);
                }
            }
        });
    }
    $(pagination);

    $(function() {
        var container = $("#draws");
        var content = container.find(".content");
        var el = $("[data-drawLink]");
        var link = el.data("drawlink");
        // var htmlContainer = $("html");

        $("[data-drawLink]").on("click", function() {
            var link = $(this).data("drawlink");
            $.ajax(link)
                .then(function (data) {
                    container.find(".content").html(data);
                    // htmlContainer.unblock();
                })
                .done(function (data) {
                    pagination();
                });
        });
    });

    $(function() {
        var container = $("#tickets");
        var content = container.find(".content");
        var el = $("[data-ticketLink]");
        var link = el.data("ticketlink");
        // var htmlContainer = $("html");

        if(container.size() > 0) {
            $.ajax(link)
                .then(function (data) {
                    container.find(".content").html(data);
                    // htmlContainer.unblock();
                })
                .done(function (data) {
                    pagination();
                });
        }
    });

    $(function() {
        var elements = $("[data-stabalize]");
        elements.each(function() {
            var el = $(this);
            var name = el.data("stabalize");
            el.find("img").on("load", function() {
                $("[data-stabalize-on='" + name + "']").each(function() {
                    var t = $(this);
                    t.css({minHeight: el.innerHeight() });
                })
            });
            $("[data-stabalize-on='" + name + "']").each(function() {
                var t = $(this);
                t.css({minHeight: el.outerHeight() });
            })
        })

    })

    $(function() {
       var elements = $(".numeric:input");
        elements.addClass("pristine");
        elements.on("change", function() {
            $(this).removeClass("pristine").addClass("dirty");
        }).on("focus", function() { $(this).select(); });
    });

    $(function() {
        $("a [data-click]").each(function() {
           var el = $(this);
            el.on("click", function(e) {
                e.preventDefault();
                window.location = el.data("click");
                return false;
            })
        });

    })
    $(function() {
        $(".toggle-form").click(function() {
            $(".toggle-form-open, .toggle-form-close").toggleClass("hidden");
        })
    });

    $(function() {
        $("[data-time]").each(function() {
            var el = $(this);
            var date = el.data("time");

            countdown(function(ts) {
                var addZero = function(n) {
                    if(n < 10) {
                        return "0" + n;
                    }
                    return n;
                };

                el.find(".days .value").html(addZero(ts.days));
                el.find(".hours .value").html(addZero(ts.hours));
                el.find(".minutes .value").html(addZero(ts.minutes));

            }, new Date(date), countdown.DAYS | countdown.HOURS | countdown.MINUTES)

        })
    });

    function initTabs(root) {
        $(root || 'body').find('.etabs')
            .bind('easytabs:ajax:beforeSend', function() {
                setTimeout(function () {
                    var el = $(this);
                    var target = el.find('.etabs__tabs__tab.active a').attr('data-target');
                    var $page = el.find(target);
                    $page.append("<p class='loadingText'>Loading...</p>");
                }.bind(this),15);
            })
            .bind('easytabs:ajax:complete', function() {
                $(this).find('.loadingText, .loadingImg').remove();
                setTimeout(function() {
                    initDataTable();
                    scanForDialogButtons();
                    pagination();
                    scanForHideables();
                    initTabs(this);
                }.bind(this), 15);
            })
            .easytabs({
                animate: false,
                cache: true,
                defaultTab: "li.active"
            });
    }

    function scanForDialogButtons() {
        function dialog(text, message, instance, success) {
            if (typeof success === "undefined") {
                success = function(){};
            }
            bootbox.dialog({
                title: text,
                message: message,
                buttons: {

                    cancel: {
                        label: "Cancel",
                        className: "btn",
                        callback: function () {
                            bootbox.hideAll();
                        }
                    },
                    confirm: {
                        label: "Confirm",
                        className: "btn-primary",
                        callback: success
                    }
                }
            });
        }

        $(".button.confirm").on("click", function (e) {
            e.preventDefault();
            var instance = $(this);
            var text = instance.data("text");
            if (text == false) {
                text = "Are you sure?";
            }

            var success = function () {
                window.location = instance.attr("href");
            };

            dialog( null, text, instance, success );
            return false;
        });
    }
    $(scanForDialogButtons);

    $(function() {
        var addZero = function(n) {
            if(n < 10) {
                return "0" + n;
            }
            return n;
        };

        var dobFields = $("select[name^=dateOfBirth]");
        if(dobFields.length > 0) {
            var dayField = dobFields.filter("[name*=Day]");
            var monthField = dobFields.filter("[name*=Month]");
            var yearField = dobFields.filter("[name*=Year]");

            var monthToDays = {
                "01": 31, "02": "S", "03": 31, "04": 30, "05": 31, "06": 30,
                "07": 31, "08":  31, "09": 30, "10": 31, "11": 30, "12": 31
            };

            var f = function() {
                var month = monthField.val();
                var numOfDays = monthToDays[month];
                var year = yearField.val();
                if (numOfDays == "S") {
                    numOfDays = 28;
                    if (year % 400 == 0 || (year % 4 == 0) && (year % 100 !== 0)) {
                        numOfDays = 29;
                    }
                }

                var dayNodes = dayField.find("option");
                dayNodes.each(function () {
                    var el = $(this);
                    if (el.val() > numOfDays) {
                        el.remove();
                    }
                });

                for (var i = 1; i <= numOfDays; i++) {
                    var node = dayNodes.filter("[value=" + addZero(i) + "]");
                    if (node.length == 0) {
                        node = $("<option></option>");
                        node.val(addZero(i));
                        node.html(i);
                        dayField.append(node);
                    }
                }
            }

            monthField.on("change", f);
        }
    });

    $(function() {
        var V = {
            hoverButtons: "#sthoverbuttons",
            focusArea: ".social-share-sidebar",
            timeout: 0.5 * 1000
        };
        var c = function() {
            var hoverButtons = $(V.hoverButtons);
            if(hoverButtons.length > 0) {
                $(V.focusArea).append(hoverButtons);
            } else {
                window.setTimeout(c, V.timeout);
            }
        }
        if($(V.focusArea)) {
            c();
        }
    })

    /*$('input[type=submit]').on('click', function(e) {
        var o = $(this);
        var c = o.clone();
        o.after(c);
        o.addClass("hidden");
        c.attr('disabled', true);
        c.addClass('disabled');
        return true;
    });*/

    $(function() {
        var V = {
            selector: "[data-selectable]"
        };

        $(V.selector).on("click", function() {
            this.setSelectionRange(0, this.value.length);
        })

    });

    var CallbackQueue = (function() {
       function CQ() {
           this._callbacks = [];
       }

        CQ.prototype.add = function(callback) {
            if(typeof callback  === "function") {
                this._callbacks.push(callback);
            }
        };

        CQ.prototype.higherOrder = function() {
            var queue = this;
            return function() {
                var instance = this;
                var args = arguments;
                queue._callbacks.forEach(function(callback) {
                    if(typeof callback === "function") {
                        callback.apply(instance, args);
                    }
                });
            }
        }
        return CQ;
    })();
    $(function() {
        var V = {
            selector: "[data-role=tagsinput]",
            callbacks: {
              add: new CallbackQueue()
            },
            options: {
                width: "100%",
                defaultText: "Refer an email",
                delimiter: [',',';', ' ']
            }
        };

        V.options.onAddTag = V.callbacks.add.higherOrder();

        V.callbacks.add.add(function(tag) {
            var regex = /^[a-zA-Z0-9.!#$%&'*+\/=?^_`{|}~-]+@[a-zA-Z0-9](?:[a-zA-Z0-9-]{0,61}[a-zA-Z0-9])?(?:\.[a-zA-Z0-9](?:[a-zA-Z0-9-]{0,61}[a-zA-Z0-9])?)*$/;
            var ex = regex.exec(tag);
            if(ex == null) {
                $(this).removeTag(tag);
            }
        });

        if($().tagsInput) {
            $(V.selector).tagsInput(V.options);
        }
    });

    $(function () {
        var V = {
            selector: "[data-flip-flop]",
            baseClass: ".flip-flop",
            toggleClass: "hidden"
        };

        $(V.selector).each(function() {
            var el = $(this);
            var selector = el.data("flipFlop");

            el.on("click", function() {

                $(V.selector).removeClass("active");
                $(this).addClass("active");

                $(V.baseClass).addClass(V.toggleClass);
                $(selector).removeClass(V.toggleClass);
            });
        });
    });

    $(function() {
        var V = {
            selector: "[data-synchronize]"
        };

        // Synchronise two forms to each other
    });

    /**
     * Loop over each trigger on the page and makes an AJAX request to the server
     */
    $('trigger').each(function (i) {
        $.ajax({
            url: "/trigger/" + $(this).attr('data-id')
        });
        $(this).remove();
    });

    /**
     * Handle the Purchase Form
     */
    $(function() {
        var forms = $("[data-purchase-form]");
        forms.each(function() {
            var el = $(this);
            var updateTotal = function() {
                var tickets = el.find("[name=amount]").val();
                var costPerTicket = el.find("[data-tickets='tickets.perTicket']").text();

                el.find("[form-data='tickets.total']").text(tickets * costPerTicket);
            }
            el.find("[name=amount]").on("keyup", updateTotal);
            updateTotal();
        });
    });

    setTimeout(function() {
        window.zEmbed||function(e,t){var n,o,d,i,s,a=[],r=document.createElement("iframe");window.zEmbed=function(){a.push(arguments)},window.zE=window.zE||window.zEmbed,r.src="javascript:false",r.title="",r.role="presentation",(r.frameElement||r).style.cssText="display: none",d=document.getElementsByTagName("script"),d=d[d.length-1],d.parentNode.insertBefore(r,d),i=r.contentWindow,s=i.document;try{o=s}catch(e){n=document.domain,r.src='javascript:var d=document.open();d.domain="'+n+'";void(0);',o=s}o.open()._l=function(){var e=this.createElement("script");n&&(this.domain=n),e.id="js-iframe-async",e.src="https://assets.zendesk.com/embeddable_framework/main.js",this.t=+new Date,this.zendeskHost="afromillionslotto.zendesk.com",this.zEQueue=a,this.body.appendChild(e)},o.write('<body onload="document._l();">'),o.close()}();
    }, 15);

    setTimeout(function() {
        // Responsive tables does NOT work well with tinyMCE tables
        // This is a hack to try to make them work together
        // This adds the data-label attribute to the td of every element, so it knows which
        // header it belongs to
        $("table").each(function(index, item) {
            var titles = $(item).find("thead th, thead td").map(function (headerIndex, headerItem) {
                return $(headerItem).text().trim();
            });

            $(this).find("tbody tr").each(function(bodytrIndex, bodytrItem) {
                $(bodytrItem).find("td").each(function(bodytdIndex, bodytdItem) {
                    $(bodytdItem).attr("data-label", titles[bodytdIndex]);
                });
            });
        });
    }, 15);

    /**
     * Override the inbuilt browser method of validation errors
     */
    (function() {
        $('input[required]').on('invalid change keydown keyup', function() {
            this.setCustomValidity("");

            var errorMessage = "";
            var isInvalid = $.inArray(this, $('input:invalid')) >= 0;

            if (this.type && this.type === 'number' && isInvalid) {
                if (this.value > this.max || this.value < this.min) {
                    errorMessage = $(this).data("invalid-number-message");
                }
            } else if (this.type && this.type === 'checkbox' && isInvalid) {
                errorMessage = $(this).data("required-message");
            } else if (!$(this).val() && isInvalid) {
                errorMessage = $(this).data("required-message");
            } else if ($(this).attr('type') === 'email' && isInvalid) {
                errorMessage = $(this).data("invalid-email-message");
            }

            if(errorMessage !== undefined) {
                this.setCustomValidity(errorMessage);
            }
        });
    })();
});


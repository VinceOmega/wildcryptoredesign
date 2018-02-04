<% require javascript("themes/ofertas/javascript/ticketPicker.js") %>
<% require javascript("themes/ofertas/javascript/countdown.min.js") %>
<form $FormAttributes class="form drawpurchase" role="form" data-picker>
    <div
            class="data hidden"
            data-for="picker"
            data-identifier="picker"
            data-picker-luckyDip-lower = "-1"
            data-picker-luckyDip-upper = "{$Lotto.endNumber}"
            data-picker-luckyDip-bonuslower = "{$Lotto.bonusStartNumber}"
            data-picker-luckyDip-bonusupper = "{$Lotto.bonusEndNumber}"
            data-picker-luckyDip-numberpooltype = "{$Lotto.numberPoolType}"
    ></div>
    $Fields.dataFieldByName(id)
    $Fields.dataFieldByName(syndicateId)
    $Fields.dataFieldByName(SecurityID)

    <% if $IsNotSyndicate %>
        <div class="containerwrap containerwrap--nowrap containerwrap--xswrap">
            <p class="containerwrap__item--grow padding--alt">
                <% if $Lotto.isDualPool %>
                    Choose {$Lotto.lottoNumbersPerTicket} numbers from 1 to {$Lotto.endNumber} and a bonus number from {$Lotto.bonusStartNumber} to {$Lotto.bonusEndNumber}, or pick Lucky Dip.
                <% else %>
                    Choose {$Lotto.TotalBalls} numbers from 1 to {$Lotto.endNumber}, or pick Lucky Dip.
                <% end_if %>

            </p>
            <div class="drawpurchase__pricebox">
                <div class="drawpurchase__price">
                    <div class="currency">
                        <span class="currency__amount balance__amount" data-u-price="{$Top.forceDecimal($Price)}">{$Top.forceDecimal($Price)}</span><span class="currency__symbol balance__currency"> WILD</span>
                    </div>
                </div>
                <div class="drawpurchase__priceslogan secondarytextcolour">{$Top.i18n("Draw__Lotto__PERPLAY")}</div>
            </div>
        </div>
    <% else %>
        <span class="hidden" data-u-price="{$Lotto.ticketPrice}"></span>
    <% end_if %>

    <% if $Message %>
        <div class="message">
            <% include Generic_Form_Error %>
        </div>
    <% end_if %>
    <br/>
    <% loop $Lines %>
        <div class="containerwrap containerwrap--expand containerwrap--center picker__row<% if $Up.IsSyndicate %> hidden<% end_if %>" <% if $First %>data-t-template="picker" <% if $Up.IsSyndicate %>data-t-after="remove"<% end_if %><% end_if %>>
           <div class="drawpurchase__luckydipbox containerwrap__item--gap">
               <div class="lucky_dip drawpurchase__luckydip +js button button--flame primarycolour">{$Top.i18n("Draw__Lotto__LuckyDip")}</div>
           </div>
            <% loop $Line.numberFields %>
                <div class="drawpurchase__pickerholder containerwrap__item--gap">$Field</div>
            <% end_loop %>
            <div class="drawpurchase__pickerholder--bonusballseparator"></div>
            <% loop $Line.bonusFields %>
                <div class="drawpurchase__pickerholder containerwrap__item--gap">$Field</div>
            <% end_loop %>
            <div class="containerwrap__item--gap picker__remove +js --control" data-t-remove=".containerwrap.picker__row">
                <i class="glyphicon glyphicon-remove drawpurchase__lineremove"></i>
            </div>
            <div class="errors" style="width: 100%">
                <% if $Errors %>
                    <% loop $Errors %>
                        <% include Generic_Form_Error %>
                    <% end_loop %>
                <% end_if %>
            </div>
        </div>
    <% end_loop %>
    <div class="drawpurchase__addlinebox" data-t-before="picker">
        <div class="textbutton add_row +js" data-t-adder="picker" alt="Add Line">
            <i class="textbutton__icon glyphicon glyphicon-plus-sign"></i>
            <span class="textbutton__text">{$Top.i18n("Draw__Lotto__ADDLINE")}</span>
        </div>
    </div>

    <div class="drawpurchase__actioncontainer containerwrap containerwrap--nowrap containerwrap--xswrap containerwrap--expand right-xs-align-container">
        <div class="containerwrap__item containerwrap__item--gap">
            <h4 class="drawpurchase__drawclosestitle secondarytextcolour">{$Top.i18n("Draw__Lotto__DRAWCLOSESIN")}</h4>
            <div class="countdown drawpurchase__date" data-time="{$Lotto.EffectiveClosingTime}">
                <div class="days">
                    <span class="value"></span>
                    <span class="label">{$Top.i18n("Countdown__days")}</span>
                </div>
                <div class="divider">:</div>
                <div class="hours">
                    <span class="value"></span>
                    <span class="label">{$Top.i18n("Countdown__hours")}</span>
                </div>
                <div class="divider">:</div>
                <div class="minutes">
                    <span class="value"></span>
                    <span class="label">{$Top.i18n("Countdown__minutes")}</span>
                </div>
            </div>
        </div>
        <div class="containerwrap__item drawpurchase__howmany containerwrap containerwrap__item--gap">
            <% if $IsNotSyndicate %>
                <h4 class="drawpurchase__howmanydrawstitle secondarytextcolour">{$Top.i18n("Draw__Lotto__HOWMANYDRAWS")}</h4>
                $Fields.dataFieldByName(draws)
            <% else %>
                <span class="numberofdraws hidden">$NumberOfDraws</span>
            <% end_if %>
        </div>
        <div class="containerwrap__item containerwrap__item--gap right-xs-align">
            <div class="containerwrap__item drawpurchase__pricebox">
                <div class="drawpurchase__price"><span data-u-text="picker.total">0</span> WILD</div>
                <div class="drawpurchase__priceslogan secondarytextcolour">{$Top.i18n("Draw__Lotto__TOTAL")}</div>
            </div>
            <% if $Actions %>
                <div class="containerwrap containerwrap--nowrap" style="justify-content: flex-end;">
                    <a href="/quickbuy" class="action button drawpurchase__uselastbutton">Use Last Numbers</a>
                    <% loop $Actions %>$Field<% end_loop %>
                </div>
            <% end_if %>
        </div>
    </div>
</form>

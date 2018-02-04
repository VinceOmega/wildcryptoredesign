<% require javascript("themes/ofertas/javascript/countdown.min.js") %>
<form $FormAttributes class="form drawpurchase" role="form" data-purchase-form>
    <div class="hidden" data-tickets="tickets.perTicket">$Raffle.ticketPrice</div>
    $Fields.dataFieldByName(SecurityID)
    $Fields.dataFieldByName(id)

    <div class="containerwrap containerwrap--nowrap">
        <h2 class="containerwrap__item--grow">PLAY THE $Raffle.name RAFFLE</h2>
        <div class="drawpurchase__pricebox">
            <div class="drawpurchase__price">€{$Top.forceDecimal($Price)}</div>
            <div class="drawpurchase__priceslogan">PER PLAY</div>
        </div>
    </div>
    <p>For each ticket you buy, you will get $Raffle.raffleNumbersPerTicket entry into the raffle!</p>
    <% if $Fields.dataFieldByName(amount).Message %>
        <div id="{$Top.FormName}_error_{$Name}" class="message message__$Fields.dataFieldByName(amount).MessageType">
            $Fields.dataFieldByName(amount).Message
        </div>
    <% end_if %>
    <div id="$Name" class="containerwrap containerwrap--nowrap amount-dropdown  drawpurchase__amountbox">
        <label class="containerwrap__item--grow drawpurchase__amountlabel" for="{$FormName}_amount">Number of Tickets</label>
        $Fields.dataFieldByName(amount)
    </div>
    <div class="containerwrap containerwrap--center containerwrap--nowrap">
        <div class="containerwrap__item--grow">
            <h4 class="drawpurchase__drawclosestitle">DRAW CLOSES IN</h4>
            <div class="countdown drawpurchase__date" data-time="{$Raffle.EffectiveClosingTime}">
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
        <div>
            <div class="drawpurchase__pricebox">
                <div class="drawpurchase__price">€<span form-data="tickets.total">0</span></div>
                <div class="drawpurchase__priceslogan">TOTAL</div>
            </div>
            <% if $Actions %>
                <div class="containerwrap containerwrap--nowrap">
                    <% loop $Actions %>$Field<% end_loop %>
                </div>
            <% end_if %>
        </div>
    </div>
</form>
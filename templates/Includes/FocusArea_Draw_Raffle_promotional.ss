<div class="-width--px1366">
     <% if $Draw %>
        <% with $Draw %>
            <% require javascript("themes/ofertas/javascript/countdown.min.js") %>

            <div class="containerwrap containerwrap--center containerwrap--nowrap mobile-wrap">
                <% include FocusArea_Draw_Lotto_sidebar %>
                <div class="resultcard resultcard--fat resultcard--large">
                    <h2 class="cmsinput--ignore">$promotionalTitle</h2>
                    <div class="cmsinput">$promotionalText</div>
                    <p>{$Top.i18n("Draw__Raffle__WinNotifyMessage")}</p>
                    <br/>
                    <div class="containerwrap containerwrap--justifycenter containerwrap--expand">
                        <h4 class="containerwrap__item--gap drawpurchase__drawclosestitle">{$Top.i18n("Draw__Raffle__DrawClosesIn")}</h4>
                        <div class="containerwrap__item--gap countdown drawpurchase__date" data-time="{$EffectiveClosingTime}">
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
                </div>
            </div>
        <% end_with %>
    <% end_if %>
</div>
<% if $Draw %>
    <% with $Draw %>
        <div class="containerwrap containerwrap--center containerwrap--nowrap mobile-wrap">
            <% include FocusArea_Draw_Lotto_sidebar %>
            <div class="resultcard resultcard--fat resultcard--large">
                <h4 class="resultcard__title">$name Results</h4>
                <h4 class="resultcard__subtitle">
                    <% if $drawNumber %>
                        <span class="draw-number">$closingTime.Long Draw</span>
                    <% end_if %>
                </h4>

                <div class="tablebox">
                    <div class="tablebox__header">
                        <div class="tablebox__cell">{$Top.i18n("Draw__Raffle__Table__Tier")}</div>
                        <div class="tablebox__cell">{$Top.i18n("Draw__Raffle__Table__Prize")}</div>
                        <div class="tablebox__cell">{$Top.i18n("Draw__Raffle__Table__WinningNumbers")}</div>
                    </div>
                    <% loop $Prizes.Limit(3) %>
                        <div class="tablebox__row">
                            <div class="tablebox__cell">$Position(1)</div>
                            <div class="tablebox__cell">$narrative</div>
                            <div class="tablebox__cell"><% loop $WinningNumbers %>$Value <br/><% end_loop %></div>
                        </div>
                    <% end_loop %>
                </div>
            </div>
        </div>
    <% end_with %>
<% end_if %>
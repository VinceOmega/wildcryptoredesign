<% if $Draw %>
    <% with $Draw %>
        <div class="containerwrap containerwrap--center containerwrap--nowrap mobile-wrap">
            <% include FocusArea_Draw_Lotto_sidebar %>
            <div class="resultcard resultcard--large  <% if $RecentPurchase %>resultcard--fat<% end_if %>">
                <% if $RecentPurchase %>
                    <h2>{$Top.i18n("Draw__Raffle__RaffleTicketConfirmation")}</h2>
                    <p>
                        You have successfully purchased <b>$RecentPurchase.count</b> raffle
                        <% if $RecentPurchase.count == 1 %>ticket<% else %>tickets<% end_if %>.
                    </p>
                    <br/>
                    <p>Numbers</p>
                    <div class="resultcard__ballcontainer containerwrap">
                        <% loop $RecentPurchase %>
                            <b>$number</b>
                        <% end_loop %>
                    </div>

                    <p>{$Top.i18n("Draw__Raffle__IncreaseOddsMessage")}</p>

                    <div class="containerwrap containerwrap--center">
                        <a class="button secondarycolour button--secondary" href="{$Link(purchase)}">{$Top.i18n("Draw__Raffle__BuyMoreTickets")}</a>
                    </div>

                <% else %>
                    <div class="picker" data-stabalize="picker">
                        $Form
                    </div>
                <% end_if %>
            </div>
        </div>
    <% end_with %>
<% end_if %>


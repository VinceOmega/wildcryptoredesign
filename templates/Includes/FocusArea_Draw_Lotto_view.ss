<% if $Draw %>
    <% with $Draw %>
        <!--
            <div class="notification primarycolour ticketnotify">
                <div class="notification__text notification__fill">
                    You pay in Naira. We convert to Euros (€). Your winnings paid in Naira.
                </div>


                <a class="button secondarycolour button--thin focusareabannerbutton" href="http://www.xe.com/currencyconverter/convert/?Amount=1&From=EUR&To=NGN" target="_blank">Euro to Naira</a>

            </div>
         -->
        <div class="containerwrap containerwrap--center containerwrap--nowrap mobile-wrap">
            <% include FocusArea_Draw_Lotto_sidebar %>
            <div class="resultcard resultcard--large resultcard--70large <% if $RecentPurchase %>resultcard--fat<% end_if %>">
                <h3> Play The Wild Crypto Lotto</h3>
                <% if $RecentPurchase %>
                    <h2>{$Top.i18n("Draw__Lotto__LottoTicketConfirmation")}</h2>
                    <p>
                        You have successfully purchased <b>$RecentPurchase.count</b> lotto
                        <% if $RecentPurchase.count == 1 %>ticket<% else %>tickets<% end_if %> for
                        <b>$RecentPurchaseValidity</b> <% if $RecentPurchaseValidity == 1 %>draw<% else %>draws<% end_if %>.
                    </p>
                    <br/>
                    <% loop $RecentPurchase %>
                        <div class="resultcard__ballcontainer containerwrap">
                            <% loop $Numbers %>
                                <% if $BonusNumber %> <% else %>
                                    <div class="resultcard__ballbox">
                                        <img src="/themes/ofertas/images/red_ball.png"
                                             class="resultcard__ball"/>
                                        <span class="resultcard__ballnumber">{$Number}</span>
                                    </div>
                                <% end_if %>
                            <% end_loop %>
                            <% loop $Numbers %>
                                <% if $BonusNumber %>
                                    <div class="resultcard__ballbox">
                                        <img src="/themes/ofertas/images/gold_ball.png"
                                             class="resultcard__ball"/>
                                        <span class="resultcard__ballnumber">{$Number}</span>
                                    </div>
                                <% end_if %>
                            <% end_loop %>
                        </div>
                    <% end_loop %>

                    <h4>{$Top.i18n("Draw__Lotto__IncreaseOddsMessage")}</h4>
                    <br/>
                    <div class="containerwrap">
                        <a class="button secondarycolour button--secondary" href="{$Link(purchase)}">{$Top.i18n("Draw__Lotto__BuyMoreTickets")}</a>
                        <div class="social-text-box">
                          <div class="social-text">Tell your friends you've been playing AfroMillionsLotto!</div>
                          <div class="socialboxPurchase <% if $Notifications %>socialbox--has-notifies<% else %>socialbox--no-notifies<% end_if %>"
                              <% with $Top.ClubModule__getData() %>
                               data-facebookurl="$FacebookUrl" data-twitterurl="$TwitterUrl" data-googleplusurl="$GooglePlusUrl"
                               data-instagramurl="$InstagramUrl" data-baseUrl="{$BaseHref}" data-twitterText="{$Top.twitterMetaDescription()}"
                              <% end_with %>
                               ></div>
                          </div>
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

<% loop $OpenDraws %>
    <% if $CanShow %>
        <section class="drawbox containerwrap containerwrap--center">
            <div class="hidden-xs" style="position: relative; margin-right:25px;">
                <a href="$Link(view)">
                    <% loop $Prizes(1) %>
                        <svg xmlns="http://www.w3.org/2000/svg" version="1.1" class="drawsidebar__overlay" viewBox="0 0 300 270">
                            <path id="curvesmall" d="M36 165 Q 148 145 254 165" stroke="transparent" fill="transparent"></path>
                            <text font-size="35" letter-spacing="-3" textLength="230">
                                <textPath xmlns:xlink="http://www.w3.org/1999/xlink" xlink:href="#curvesmall" font-size="35" letter-spacing="-3" textLength="230" class="jackpot-size">$narrative</textPath>
                            </text>
                        </svg>
                    <% end_loop %>
                    <img src="{$SplashLoggedIn}" onerror="this.src='/themes/ofertas/images/twelve40/Islands_lotto.svg'" class="drawbox__image" />
                    <span class="drawsidebar__overlay drawsidebar__overlay--smalltext-small">This</span>
                    <span class="drawsidebar__overlay drawsidebar__overlay--largetext-small">$dayOfDraw</span>
                </a>
            </div>
            <div class="drawbox__content containerwrap__item--grow">
                <h1 class="drawbox__title">$name</h1>
                <p class="drawbox__message">$Details.summary</p>
                <% if $drawNumber %>
                    <div class="drawbox__subtitle">Draw $drawNumber on $closingTime.Long</div>
                <% end_if %>
            </div>
            <div class="containerwrap containerwrap--expand containerwrap--column containerwrap--justifycenter">
                <a class="containerwrap__item--gap button primarycolour button--flame" href="{$Link(view)}">{$Top.i18n("Draw__ViewDetails")}</a>
                <% if $CanBuy %>
                    <a class="containerwrap__item--gap button secondarycolour button--secondary" href="{$Link(view)}">{$Top.i18n("Draw__BuyTickets")}</a>
                <% end_if %>
            </div>
        </section>
    <% end_if %>
<% end_loop %>

<% include Accordion %>

<% include InstantWinGames %>
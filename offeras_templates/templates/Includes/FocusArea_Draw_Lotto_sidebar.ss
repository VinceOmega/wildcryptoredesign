<div class="drawsidebar">
    <% if $isLoggedIn %>
        <a class="drawsidebar__link" href="$Link">
            <% loop $Prizes(1) %>
                <svg xmlns="http://www.w3.org/2000/svg" version="1.1" class="drawsidebar__overlay" viewBox="0 0 300 270">
                    <path id="curve" d="M36 168 Q 148 144 264 168" stroke="transparent" fill="transparent"></path>
                    <text font-size="41" letter-spacing="-3" textLength="228">
                        <textPath xmlns:xlink="http://www.w3.org/1999/xlink" xlink:href="#curve" font-size="41" letter-spacing="-3" textLength="228" class="jackpot-size">$narrative</textPath>
                    </text>
                </svg>
            <% end_loop %>
            <img src="{$Splash}" onerror="this.src='/themes/ofertas/images/twelve40/Islands_lotto.svg'" class="drawsidebar__image" style="min-width: 270px;"/>
            <%-- <span class="drawsidebar__overlay drawsidebar__overlay--largetext-big" style="font-size: 12px; top: 162px;">$dayOfDraw</span> --%>
            <span class="drawsidebar__overlay drawsidebar__overlay--largetext-big" style="font-size: 12px; top: 162px;">$dateOfDraw</span>
        </a>
    <% else %>
        <a class="drawsidebar__link" href="/sign-up">
            <% loop $Prizes(1) %>
                <svg xmlns="http://www.w3.org/2000/svg" version="1.1" class="drawsidebar__overlay" viewBox="0 0 300 270">
                    <path id="curve" d="M36 168 Q 148 144 264 168" stroke="transparent" fill="transparent"></path>
                    <text font-size="41" letter-spacing="-3" textLength="228">
                        <textPath xmlns:xlink="http://www.w3.org/1999/xlink" xlink:href="#curve" font-size="41" letter-spacing="-3" textLength="228" class="jackpot-size">$narrative</textPath>
                    </text>
                </svg>
            <% end_loop %>
            <img src="{$Splash}" onerror="this.src='/themes/ofertas/images/twelve40/Islands_lotto.svg'" class="drawsidebar__image" style="min-width: 270px;" />
            <%-- <span class="drawsidebar__overlay drawsidebar__overlay--largetext-big" style="font-size: 12px; top: 162px;">$dayOfDraw</span> --%>
            <span class="drawsidebar__overlay drawsidebar__overlay--largetext-big" style="font-size: 12px; top: 162px;">$dateOfDraw</span>
        </a>
        <a class="drawsidebar__link" href="/promotion-terms">
            <%--*Terms & Conditions Apply--%>
        </a>
    <% end_if %>
</div>
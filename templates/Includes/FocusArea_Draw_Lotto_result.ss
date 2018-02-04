<% if $Draw %><% with $Draw %>
<div class="containerwrap containerwrap--center containerwrap--nowrap mobile-wrap">
    <% include FocusArea_Draw_Lotto_sidebar %>
    <div class="resultcard">
        <div class="resultcard__titlebox">
            <h4 class="resultcard__title">$name Results</h4>
            <% if $drawNumber %>
              <h4 class="resultcard__subtitle">$closingTime.Long Draw</h4>
            <% end_if %>
        </div>
        <div class="resultcard__ballcontainer containerwrap containerwrap--nowrap containerwrap--xswrap">
            <% loop $Allnumbers %>
                <div class="resultcard__ballbox">
                    <img src="/themes/ofertas/images/red_ball.png"
                         class="resultcard__ball"/>
                    <span class="resultcard__ballnumber">{$Number}</span>
                </div>
            <% end_loop %>
            <% loop $AllBonusNumbers %>
                <div class="resultcard__ballbox">
                    <img src="/themes/ofertas/images/gold_ball.png"
                         class="resultcard__ball"/>
                    <span class="resultcard__ballnumber">{$Number}</span>
                </div>
            <% end_loop %>
        </div>
    </div>
</div>
<% end_with %><% end_if %>

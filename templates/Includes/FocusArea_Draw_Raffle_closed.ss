 <% if $Draw %>
    <% with $Draw %>
        <div class="containerwrap containerwrap--center containerwrap--nowrap mobile-wrap">
            <% include FocusArea_Draw_Lotto_sidebar %>
            <div class="resultcard resultcard--fat resultcard--large">
                <h2>{$Top.i18n("Draw__Raffle__Closed__TitleMessage")}</h2>
                <p>{$Top.i18n("Draw__Raffle__Closed__Message1")}</p>
                <p>{$Top.i18n("Draw__Raffle__Closed__Message2")}</p>
                <br/>
                <p>{$Top.i18n("Draw__Raffle__Closed__Message3")}</p>
                <p>{$Top.i18n("Draw__Raffle__Closed__Message4")}</p>
            </div>
        </div>
    <% end_with %>
<% end_if %>
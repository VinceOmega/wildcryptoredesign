 <% if $Draw %>
    <% with $Draw %>
        <div class="containerwrap containerwrap--center containerwrap--nowrap">
            <% include FocusArea_Draw_Lotto_sidebar %>
            <div class="resultcard resultcard--fat resultcard--large">
                <h2 class="cmsinput--ignore">
                    <% if $disabledTitle %>
                        $disabledTitle
                    <% else %>
                        {$Top.i18n("Draw__Raffle__Closed__TempMessage")}
                    <% end_if %>
                </h2>
                <div class="cmsinput">$disabledText</div>
                <p>{$Top.i18n("Draw__Raffle__Closed__Message3")}</p>
                <p>{$Top.i18n("Draw__Raffle__Closed__Message4")}</p>
            </div>
        </div>
    <% end_with %>
<% end_if %>
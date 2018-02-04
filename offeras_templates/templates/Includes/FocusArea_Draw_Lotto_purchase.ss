<% if $Draw %>
    <% with $Draw %>
        <div class="notification primarycolour ticketnotify">
            <div class="notification__text notification__fill">
                You pay in Naira. We convert to Euros (WILD). Your winnings paid in Naira.
            </div>


            <a class="button secondarycolour button--thin focusareabannerbutton" href="http://www.xe.com/currencyconverter/convert/?Amount=1&From=EUR&To=NGN" target="_blank">Euro to Naira</a>

        </div>
        <div class="containerwrap containerwrap--center containerwrap--nowrap mobile-wrap">
            <% include FocusArea_Draw_Lotto_sidebar %>
            <div class="picker" data-stabalize-on="picker">
                $Form
            </div>
        </div>
    <% end_with %>
<% end_if %>
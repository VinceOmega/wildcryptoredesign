<div class="notification shadowcolour">
    <div class="notification__text notification__fill">
        You pay in Naira to play Instant Win Games. We convert to Euros (€). Your winnings paid in Naira.
    </div>


    <a class="button primarycolour button--thin focusareabannerbutton" href="http://www.xe.com/currencyconverter/convert/?Amount=1&From=EUR&To=NGN" target="_blank">Euro to Naira</a>

</div>
<div class="containerwrap containerwrap--mediumexpand">
<% if $Game %>
    <% with $Game %>
            <a class="iwgbox iwgbox--big"<% if $uniqueKey %> href="{$Link}"<% end_if %>>
                <div class="iwgbox__splashboxholder">
                    <div class="iwgbox__splashbox">
                        <img class="iwgbox__splash" src="$Splash" alt="{$name} Splash Art" />
                    </div>
                </div>
                <div class="iwgbox__caption">
                    <div class="iwgbox__description cmsinput--ignore">
                        <% if $Details.blurb %>
                            $Details.blurb.raw
                        <% end_if %>
                    </div>

                    <% if enabled %>
                        <div class="iwgbox__price">€{$Top.forceDecimal($Price)}</div>
                        <div class="button secondarycolour button--thin button--secondary">{$Top.i18n("Homepage__PlayTry")}</div>
                    <% end_if %>
                </div>
                <% if $PlaysAvailable > 0 %>
                    <div class="iwgbox__subcaption">$PlaysAvailable play<% if $PlaysAvailable > 1 %>s<% end_if %> available</div>
                <% end_if %>
            </a>
    <% end_with %>
<% end_if %>

<% if $Game %>
    <% if $SmallGames %>
        <div class="containerwrap containerwrap--fixed">
        <% loop $SmallGames %>
                <a class="iwgbox"<% if $uniqueKey %> href="{$Link}"<% end_if %>>
                    <% if $PlaysAvailable > 0 %>
                        <span class="iwgbox__subcaption">$PlaysAvailable play<% if $PlaysAvailable > 1 %>s<% end_if %> available</span>
                    <% end_if %>
                    <div class="iwgbox__splashboxholder">
                        <div class="iwgbox__splashbox">
                            <img class="iwgbox__splash" src="$Splash" alt="{$name} Splash Art" />
                        </div>
                    </div>
                    <% if enabled %>
                        <div class="iwgbox__caption">
                            <div class="iwgbox__description cmsinput"></div>
                            <div class="iwgbox__price iwgbox__price--small">€{$Top.forceDecimal($Price)}</div>
                            <div class="button secondarycolour button--secondary button--ultrathin">{$Top.i18n("Homepage__PlayTry")}</div>
                        </div>
                    <% end_if %>
                </a>
        <% end_loop %>
    <% end_if %>
    </div>
    <a class="button secondarycolour button--secondary button--play visible-xs" href="{$getLink('InstantWinGames')}">
        {$Top.i18n("Homepage__PlayMoreGames")}
    </a>
<% end_if %>
</div>
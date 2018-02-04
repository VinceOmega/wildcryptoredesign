<% include Widget_GamesToPlay %>
<div class="containerwrap containerwrap--mediumexpand">
    <% if $AllGames %>
        <% loop $AllGames %>
            <a class="iwgbox iwgbox--bigger"<% if $uniqueKey %> href="{$Link}"<% end_if %>>
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
                        <div class="iwgbox__price">{$Top.forceDecimal($Price)} WILD</div>
                        <div class="button secondarycolour button--thin">{$Top.i18n("Homepage__PlayTry")}</div>
                    <% end_if %>
                </div>
            </a>
        <% end_loop %>
    <% end_if %>
</div>
<% include Accordion %>
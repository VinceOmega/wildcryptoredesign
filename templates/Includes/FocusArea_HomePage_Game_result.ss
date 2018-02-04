<% if $Game %><% with $Game %>
    <div class="containerwrap containerwrap--center containerwrap--justifycenter">
        <div class="focusarea__textblock focusarea__textblock--game">
            <% if $Top.Outcome.isWin %>
                <h1 class="focusarea__titletext">{$Top.i18n("Game__Result__Congratulations")}</h1>
                <h1 class="focusarea__titletext focusarea__titletext--small">{$Top.i18n("Game__Result__YouHaveWon")}</h1>
                <h3 class="focusarea__titletext focusarea__titletext--small">{$Top.i18n("Game__Result__YourWinningsAre")} $Top.Outcome.Winnings.Inline</h3>
                <div class="cmsinput">$Details.summary.raw</div>

                <div class="social-share visible-xs">
                    <h3>{$Top.i18n("Game__Result__TellYourFriendsMessage")}</h3>
                    <div class="social-share__holder">
                        <span class='st_facebook_large' displayText='Facebook'></span>
                        <span class='st_twitter_large' displayText='Tweet'></span>
                        <span class='st_googleplus_large' displayText='Google +'></span>
                    </div>
                </div>
            <% else %>
                <h1 class="focusarea__titletext focusarea__titletext--small">{$Top.i18n("Game__Result__BetterLuckMessage")}</h1>
                <h2 class="focusarea__titletext focusarea__titletext--small">{$Top.i18n("Game__Result__TryAgainMessage")}</h2>
            <% end_if %>

            <div class="focusarea__ctacontainer">
                <% if $PlaysAvailable > 0 %>
                    <a class="button secondarycolour button--play button--flame focusarea__fill" href="{$Link(buy)}">{$Top.i18n("Game__Result__ContinuePlay")}</a>
                <% else %>
                    <a class="button secondarycolour button--secondary button--play focusarea__fill" href="{$Link(buy)}">{$Top.i18n("Game__Result__PlayAgain")}</a>
                    <div class="focusarea__price">€{$Top.forceDecimal($Price)}</div>
                <% end_if %>
            </div>
            <a class="button secondarycolour button--secondary button--play focusarea__fill" href="/instant-win-games">{$Top.i18n("Game__Result__PlayMoreGames")}</a>
        </div>
        <div class="hidden-xs">
            <img src="$Badge" alt="{$name} Badge" class="focusarea__gamelogo"/>
        </div>
    </div>
<% end_with %><% end_if %>
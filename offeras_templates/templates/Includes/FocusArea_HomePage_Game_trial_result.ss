<% if $Game %><% with $Game %>
    <div class="containerwrap containerwrap--center containerwrap--justifycenter">
        <div class="focusarea__textblock focusarea__textblock--game">
            <h1 class="focusarea__titletext focusarea__titletext--small">{$Top.i18n("Game__Result__TrailTitleMessage")}</h1>
            <h2 class="focusarea__titletext focusarea__titletext--small">{$Top.i18n("Game__Result__TrialMessage")}</h2>

            <div class="focusarea__ctacontainer">
                <a class="button button--secondary button--play focusarea__fill" href="{$Link(buy)}">{$Top.i18n("Homepage__PlayGame")}</a>
                <div class="focusarea__price">WILD{$Top.forceDecimal($Price)}</div>
            </div>
            <a class="button button--secondary button--play focusarea__fill" href="/instant-win-games">{$Top.i18n("Game__Result__PlayMoreGames")}</a>
        </div>
        <div class="hidden-xs">
            <img src="$Badge" alt="{$name} Badge" class="focusarea__gamelogo"/>
        </div>
    </div>
<% end_with %><% end_if %>
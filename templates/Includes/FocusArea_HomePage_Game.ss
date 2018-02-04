<% if $Game(false) %><% with $Game %>
<div class="game-card game card col-sm-12">
    <div class="col-sm-6 col-sm-offset-1 context">
        <h1>$name</h1>
        <h2>$blurb.raw</h2>

        <div class="blurb">
            <h3>{$Top.i18n("HomePage__WantToPlay")}</h3>
            <p>$Details.summary.raw</p>

            <% if $PlaysAvailable > 0 %>
                <h4>You have $PlaysAvailable <% if $PlaysAvailable > 1 %>plays<% else %>play<% end_if %> available</h4>
                <a class="button secondarycolour inline play-game js xi continue-play" href="{$Link(buy)}">{$Top.i18n("HomePage__ContinuePlay")}</a>
            <% else %>
                <a class="button secondarycolour left inline play-game try-game xi" href="{$Link(trial)}">{$Top.i18n("HomePage__TryGame")}</a>
            <div class="left">
                <a class="button secondarycolour inline play-game js xi" href="{$Link(buy)}">{$Top.i18n("HomePage__PlayGame")}</a>
                <div class="cost">€{$Top.forceDecimal($Price)}</div>
            </div>
            <% end_if %>
        </div>
    </div>
    <div class="col-sm-5 badge-area hidden-xs">
        <img src="$Badge" alt="{$name} Badge"/>
    </div>
</div>
<div class="clearfix"></div>
<% end_with %><% end_if %>
<% if $Game %><% with $Game %>
<%-- <div class="div -game -game--title"><h1>$name</h1></div> --%>
<div class="containerwrap containerwrap--center containerwrap--justifycenter">
    <% if $Up.isListPage %>
        <% if $PlaysAvailable > 0 %>
        <span class="badge focus-area-plays-available">$PlaysAvailable play available</span>
        <% end_if %>
    <% end_if %>
    <div class="focusarea__textblock focusarea__textblock--game">
        <%-- <div class="cmsinput">$Details.blurb.raw</div> --%>
        <div class="cmsinput">
            <%-- <h3>{$Top.i18n("Homepage__WantToPlay")}</h3> --%>
            <%-- <p>$Details.summary.raw</p> --%>

            <!---
                <div class="focusarea__ctacontainer focusarea__ctcontainer-right">
                    <div class="focusarea__price">w{$Top.forceDecimal($Price)}</div>
                </div>
            --->
            <div class="focusarea__ctacontainer">
                <% if $Up.isListPage %>
                    <a class="button secondarycolour button--secondary focusarea__fill" href="$Link">{$Top.i18n("Homepage__MoreInfo")}</a>
                <% end_if %>
                <a class="button secondarycolour button--secondary button--play focusarea__fill" href="{$Link(trial)}">{$Top.i18n("Homepage__TryGame")}</a>
                <% if $PlaysAvailable > 0 %>
                    <a class="button secondarycolour button--secondary button--play focusarea__fill" href="{$Link(buy)}">{$Top.i18n("Homepage__ContinueGame")}</a>
                <% else %>
                    <a class="button secondarycolour button--secondary button--play focusarea__fill" href="{$Link(buy)}">{$Top.i18n("Homepage__PlayGame")}</a>
                <% end_if %>
            </div>
        </div>
    </div>
    <div class="hidden-xs div -logo">
        <img src="{$Badge}" onerror="this.src='/themes/ofertas/images/twelve40/Islands_lotto.svg'" class="focusarea__gamelogo" />
    </div>
</div>
<% end_with %><% end_if %>
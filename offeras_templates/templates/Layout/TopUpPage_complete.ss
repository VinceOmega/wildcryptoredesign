<% if $RaffleSection %>
    <div class="drawbox containerwrap containerwrap--center">
        <div class="drawbox__content containerwrap__item--grow">
        <% if $ContinuePurchase %>
            <h1 class="drawbox__title">{$Top.i18n("TopUp__ContinuePurchase")}</h1>
        <% else %>
            <h1 class="drawbox__title">{$Top.i18n("TopUp__BuyTickets")}</h1>
        <% end_if %>
            <p class="drawbox__message">$RaffleSection</p>
        </div>
        <div class="containerwrap containerwrap--expand containerwrap--column containerwrap--justifycenter">
            <a class="containerwrap__item--gap button secondarycolour goTo-button" href="{$DrawLink}/">{$Top.i18n("TopUp__PlayLotteries")}</a>
        </div>
    </div>
<% end_if %>
<%--<% if $SyndicateSection %>--%>
    <%--<div class="drawbox containerwrap containerwrap--center">--%>
        <%--<div class="drawbox__content containerwrap__item--grow">--%>
            <%--<h1 class="drawbox__title">{$Top.i18n("TopUp__SetUpASyndicate")}</h1>--%>
            <%--<p class="drawbox__message">$SyndicateSection</p>--%>
        <%--</div>--%>
        <%--<div class="containerwrap containerwrap--expand containerwrap--column containerwrap--justifycenter">--%>
            <%--<a class="containerwrap__item--gap button" href="{$SyndicateLink}/">{$Top.i18n("TopUp__CreateASyndicate")}</a>--%>
        <%--</div>--%>
    <%--</div>--%>
<%--<% end_if %>--%>
<% if $IWGSection %>
    <div class="drawbox containerwrap containerwrap--center">
        <div class="drawbox__content containerwrap__item--grow">
            <h1 class="drawbox__title">{$Top.i18n("TopUp__PlayGames")}</h1>
            <p class="drawbox__message">$IWGSection</p>
        </div>
        <div class="containerwrap containerwrap--expand containerwrap--column containerwrap--justifycenter">
            <a class="containerwrap__item--gap button secondarycolour goTo-button" href="{$IWGLink}/">{$Top.i18n("TopUp__PlayGames")}</a>
        </div>
    </div>
<% end_if %>
<% include Accordion %>

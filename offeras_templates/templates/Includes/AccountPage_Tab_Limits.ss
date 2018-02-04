<div class="account">

<% if 1 %>
        <div class="account__section">
            <div class="account__headerbox">
                <h2 class="account__header">{$Top.i18n("AccountPage__Limits__SuspendMessage")}</h2>
            </div>
            <div class="account__content cmsinput cmsinput--faint">
                $SuspendCopy
            </div>
            <div class="containerwrap containerwrap--end">
                <a href="{$Link}suspend" class="button secondarycolour containerwrap__item--gap confirm" data-text="{$Top.i18n("AccountPage__Limits__AreYouSureMessage")}">{$Top.i18n("AccountPage__Limits__Suspend")}</a>
            </div>
        </div>
<% end_if %>

    <div class="account__section">
        <div class="account__headerbox">
            <h2 class="account__header">{$Top.i18n("AccountPage__Limits__YourLimits")}</h2>
        </div>
        <div class="account__content cmsinput cmsinput--faint">
            $LimitsCopy
        </div>
        <div class="containerwrap">
            <a href="{$Link}limit/deposits" class="account__limitsbutton containerwrap__item--gap containerwrap__item--grow button secondarycolour button--secondary">{$Top.i18n("AccountPage__Limits__TopUpLimit")}</a>
            <a href="{$Link}limit/spend" class="account__limitsbutton containerwrap__item--gap containerwrap__item--grow button secondarycolour button--secondary">{$Top.i18n("AccountPage__Limits__SpendingLimit")}</a>
            <a href="{$Link}limit/plays" class="account__limitsbutton containerwrap__item--gap containerwrap__item--grow button secondarycolour button--secondary">{$Top.i18n("AccountPage__Limits__PlayLimit")}</a>
        </div>
    </div>
</div>
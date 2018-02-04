<div class="account containerwrap containerwrap--nowrap containerwrap--swrap">
    <div class="account__section box edit-form <% if $FormErrored %><% else %>hide<% end_if %>">
        <div class="account__headerbox containerwrap">
            <h2 class="account__header">{$Top.i18n("AccountPage__Profile__PlayerDetails")}</h2>
            <a class="button button--ultrathin button--orange edit js">X</a>
        </div>
        <div class="account__content">
            $AccountForm
        </div>
    </div>
    <div class="account__section box player<% if $FormErrored %> hide<% end_if %>">
        <div class="account__headerbox containerwrap">
            <h2 class="account__header">{$Top.i18n("AccountPage__Profile__PlayerDetails")}</h2>
            <a class="button button--ultrathin button--orange edit js">{$Top.i18n("AccountPage__Profile__Edit")}</a>
        </div>
        <div class="account__content">
            <h2 class="account__name">$User.firstName $User.lastName</h2>
            <div class="containerwrap containerwrap--expand containerwrap--nowrap containerwrap--xswrap">
                <div class="containerwrap__item containerwrap__item--grow containerwrap__item--gap">
                    <h3 class="account__fieldname">{$Top.i18n("AccountPage__Profile__Address")}</h3>
                    <address class="account__fields">
                        <% if $checkValueValid($User.address1) %>$User.address1,<br /><% end_if %>
                        <% if $checkValueValid($User.address2) %>$User.address2,<br /><% end_if %>
                        <% if $checkValueValid($User.address3) %>$User.address3,<br /><% end_if %>
                        <% if $checkValueValid($User.country) %>$User.country,<br /><% end_if %>
                        <% if $checkValueValid($User.postCode) %>$User.postCode<br /><% end_if %>
                    </address>

                    <h3 class="account__fieldname">{$Top.i18n("AccountPage__Profile__Email")}</h3>
                    <p class="account__fields">$User.email</p>

                    <h3 class="account__fieldname">{$Top.i18n("AccountPage__Profile__DateofBirth")}</h3>
                    <p class="account__fields">$User.dateOfBirth</p>
                </div>
                <div class="containerwrap__item containerwrap__item--grow containerwrap__item--gap">
                    <h3 class="account__fieldname">{$Top.i18n("AccountPage__Profile__TelephoneNumber")}</h3>
                    <p class="account__fields">$User.telephoneNumber</p>
                </div>
            </div>
        </div>
    </div>
    <div class="account__section account__section--side box actions box-left-padding">
        <div class="account__headerbox">
            <h2 class="account__header">{$Top.i18n("AccountPage__Profile__Actions")}</h2>
        </div>
        <div class="containerwrap containerwrap--expand">
            <% if $TopUpLink %>
                <a href="{$TopUpLink}" style="font-size:18px;" class="containerwrap__item--gap containerwrap__item--fill button secondarycolour button--secondary top-up">{$Top.i18n("AccountPage__Profile__TopUp")}</a>
            <% end_if %>
            <% if $RepayLink %>
                <a href="{$RepayLink}" style="font-size:18px;" class="containerwrap__item--gap containerwrap__item--fill button secondarycolour button--secondary withdraw-funds">{$Top.i18n("AccountPage__Profile__Withdraw")}</a>
            <% end_if %>
        </div>
    </div>
</div>
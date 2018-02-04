<div class="account">
    <div class="account__section">
        <div class="account__headerbox">
            <h2 class="account__header">{$Top.i18n("AccountPage__Wallet__YourWalletDetails")}</h2>
        </div>
        <div class="containerwrap containerwrap--nowrap containerwrap--xswrap containerwrap--expand">
            <div class="account__content funds containerwrap__item--gap containerwrap__item--grow">
                <h1 class="funds__amount">€{$Top.forceDecimal($getBalance.setDefaultPool("deposits"))}</h1>
                <h2 class="funds__title">{$Top.i18n("AccountPage__Wallet__Deposits")}</h2>
            </div>
            <div class="account__content funds containerwrap__item--gap containerwrap__item--grow">
                <h1 class="funds__amount">€{$Top.forceDecimal($getBalance.setDefaultPool("promotions"))}</h1>
                <h2 class="funds__title">{$Top.i18n("AccountPage__Wallet__Promotions")}</h2>
            </div>
            <div class="account__content funds containerwrap__item--gap containerwrap__item--grow">
                <h1 class="funds__amount">€{$Top.forceDecimal($getBalance.setDefaultPool("winnings"))}</h1>
                <h2 class="funds__title">{$Top.i18n("AccountPage__Wallet__Winnings")}</h2>
            </div>
        </div>
        <div class="account__headerbox account__headerbox--margintop">
            <h2 class="account__header">{$Top.i18n("AccountPage__Wallet__YourWalletHistory")}</h2>
        </div>
        <div class="account__content">
            <table class="data-table responsive" data-url="{$Link(history)}">
                <thead>
                <tr>
                    <th>{$Top.i18n("AccountPage__Wallet__Table__Date")}</th>
                    <th>{$Top.i18n("AccountPage__Wallet__Table__Amount")}</th>
                    <th>{$Top.i18n("AccountPage__Wallet__Table__Balance")}</th>
                    <th>{$Top.i18n("AccountPage__Wallet__Table__Code")}</th>
                    <th>{$Top.i18n("AccountPage__Wallet__Table__Narrative")}</th>
                </tr>
                </thead>
                <tbody>
                </tbody>
            </table>
        </div>
        <div class="containerwrap containerwrap--center containerwrap--end">
            <a href="{$Link}history" class="containerwrap__item--gap button secondarycolour button--secondary">{$Top.i18n("AccountPage__Wallet__More")}</a>
        </div>
    </div>
</div>
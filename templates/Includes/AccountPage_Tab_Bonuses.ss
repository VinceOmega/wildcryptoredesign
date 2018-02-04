<div class="account">
    <div class="account__section">
        <div class="account__headerbox">
            <h2 class="account__header">{$Top.i18n("AccountPage__Bonuses__RedeemMessage")}</h2>
        </div>
        <div class="containerwrap containerwrap--expand containerwrap--nowrap containerwrap--xswrap">
            <div class="account__content containerwrap__item--gap containerwrap__item--grow">
                $BonusCodeCopy
            </div>
            <div class="account__content containerwrap__item--gap">
                $BonusCodeForm
            </div>
        </div>
        <div class="account__content account__content--margin">
            <table class="data-table responsive" data-url="{$Top.Link(bonusCode)}" data-parameters="limit=5">
                <thead>
                <tr>
                    <th>{$Top.i18n("AccountPage__Bonuses__Table__RedeemedAt")}</th>
                    <th>{$Top.i18n("AccountPage__Bonuses__Table__Code")}</th>
                    <th>{$Top.i18n("AccountPage__Bonuses__Table__Narrative")}</th>
                </tr>
                </thead>
                <tbody>
                </tbody>
            </table>
        </div>
    </div>
</div>


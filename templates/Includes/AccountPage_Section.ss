<div class="col-sm-12 box" data-section-data="account/data/refer">
    <div class="inner">
        <h2 class="inner-title-padding col-sm-12 account-subbox-title">{$Top.i18n("AccountPage__Section__TitleMessage")}</h2>
        <div class="col-xs-12">
            <div class="row">
                <div class="subbox">
                    Something
                </div>
            </div>
        </div>
        <div class="col-xs-12">
            <div class="row">
                <div class="subbox">
                    <table class="data-table responsive" data-url="{$Top.Link(wallet)}" data-parameters="limit=5">
                        <thead>
                        <tr>
                            <th>{$Top.i18n("AccountPage__Section__Table__Email")}</th>
                            <th>{$Top.i18n("AccountPage__Section__Table__Status")}</th>
                        </tr>
                        </thead>
                        <tbody>
                        </tbody>
                    </table>
                </div>
            </div>
        </div>

        <div class="col-xs-12 col-sm-3 right account-button-right">
            <a href="{$Top.Link}refer" class="button secondarycolour account-history beta resize">{$Top.i18n("AccountPage__Section__More")}</a>
        </div>
        <div class="clearfix"></div>
    </div>
</div>
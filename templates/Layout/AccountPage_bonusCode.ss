<% require css("themes/ofertas/javascript/advanced-datatable/css/jquery.dataTables.min.css") %>
<% require css("themes/ofertas/javascript/data-tables/DT_bootstrap.css") %>
<div class="main main-padding">

    <div class="col-sm-12 box current-lotteries">
        <div class="inner">
            <h2>{$Top.i18n("AccountPage__Bonuses__Redeemed")}</h2>
            <div class="subbox">
                <table class="data-table responsive">
                    <thead>
                    <tr>
                        <th>{$Top.i18n("AccountPage__Bonuses__RedeemedAt")}</th>
                        <th>{$Top.i18n("AccountPage__Bonuses__BonusCode")}</th>
                        <th>{$Top.i18n("AccountPage__Bonuses__Narrative")}</th>
                    </tr>
                    </thead>
                    <tbody>
                    </tbody>
                </table>

            </div>
        </div>
    </div>
    <div class="clearfix"></div>
    <% include Accordion %>
    
</div>
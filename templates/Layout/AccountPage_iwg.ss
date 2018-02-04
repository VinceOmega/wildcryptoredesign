<% require css("themes/ofertas/javascript/advanced-datatable/css/jquery.dataTables.min.css") %>
<% require css("themes/ofertas/javascript/data-tables/DT_bootstrap.css") %>
<div class="main main-padding">

    <div class="col-sm-12 box current-lotteries">
        <div class="inner">
            <h2 class="inner-title-padding">{$Top.i18n("AccountPage__Games__TitleMessage")}</h2>
            <div class="subbox">
                <table class="data-table responsive">
                    <thead>
                    <tr>
                        <th>{$Top.i18n("AccountPage__Games__Table__Purchased")}</th>
                        <th>{$Top.i18n("AccountPage__Games__Table__Completed")}</th>
                        <th>{$Top.i18n("AccountPage__Games__Table__Name")}</th>
                        <th>{$Top.i18n("AccountPage__Games__Table__Winner")}</th>
                        <th>{$Top.i18n("AccountPage__Games__Table__Winnings")}</th>
                        <th>{$Top.i18n("AccountPage__Games__Table__AutoCompleted")}</th>
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
    <div class="clearfix"></div>
</div>
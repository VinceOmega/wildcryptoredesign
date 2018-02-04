<% require css("themes/ofertas/javascript/advanced-datatable/css/jquery.dataTables.min.css") %>
<% require css("themes/ofertas/javascript/data-tables/DT_bootstrap.css") %>
<div class="account">
    <div class="account__section">
        <div class="account__headerbox">
            <h2 class="account__header">{$Top.i18n("AccountPage__Refer__Referred")}</h2>
        </div>
        <div class="account__content">
            <table class="data-table responsive">
                <thead>
                <tr>
                    <th>{$Top.i18n("AccountPage__Refer__Table__Email")}</th>
                    <th>{$Top.i18n("AccountPage__Refer__Table__Status")}</th>
                </tr>
                </thead>
                <tbody>
                </tbody>
            </table>
        </div>
    </div>
</div>
<% include Accordion %>

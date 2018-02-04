<% require css("themes/ofertas/javascript/advanced-datatable/css/jquery.dataTables.min.css") %>
<% require css("themes/ofertas/javascript/data-tables/DT_bootstrap.css") %>
<% if $RepayRequest %>
    <div class="account">
        <div class="account__section">
            <div class="account__headerbox">
                <h2 class="account__header">{$Top.i18n("Repayment__WithdrawalRequests")}</h2>
            </div>
            <div class="account__content tablebox tablebox--actionable">
                <table class="data-table table-hover responsive">
                    <thead>
                    <tr>
                        <th>{$Top.i18n("Repayment__Table__Date")}</th>
                        <th>{$Top.i18n("Repayment__Table__Amount")}</th>
                        <th>{$Top.i18n("Repayment__Table__Code")}</th>
                        <th>{$Top.i18n("Repayment__Table__RepaymentStatus")}</th>
                    </tr>
                    </thead>
                    <tbody>
                    </tbody>
                </table>
            </div>
        </div>
    </div>
<% else %>
    <div class="drawbox drawbox--large cmsinput cmsinput--links cmsinput--faint cmsinput--spaced">
        $NoRepaymentsMessage
    </div>
<% end_if %>
<% include Accordion %>
<% include InstantWinGames %>

<% require css("themes/ofertas/javascript/advanced-datatable/css/jquery.dataTables.min.css") %>
<% require css("themes/ofertas/javascript/data-tables/DT_bootstrap.css") %>

<% if $SupportQueries %>
    <div class="account">
        <div class="account__section">
            <div class="account__headerbox">
                <h2 class="account__header">{$Top.i18n("Support__Support")}</h2>
            </div>
            <div class="account__content tablebox tablebox--actionable">
                <table class="data-table table-hover responsive">
                    <thead>
                    <tr>
                        <th>{$Top.i18n("Support__Table__Subject")}</th>
                        <th>{$Top.i18n("Support__Table__Updated")}</th>
                        <th>{$Top.i18n("Support__Table__Status")}</th>
                        <th class="hidden">{$Top.i18n("Support__Table__Link")}</th>
                    </tr>
                    </thead>
                    <tbody>
                    </tbody>
                </table>
            </div>
        </div>
    </div>
<% else %>
    <div class="drawbox drawbox--large cmsinput cmsinput--faint cmsinput--spaced cmsinput--links">
        $NeedHelpMessage
    </div>
<% end_if %>

<% include Accordion %>
<% include InstantWinGames %>
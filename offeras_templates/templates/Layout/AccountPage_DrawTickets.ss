<% require css("themes/ofertas/javascript/advanced-datatable/css/jquery.dataTables.min.css") %>
<% require css("themes/ofertas/javascript/data-tables/DT_bootstrap.css") %>
<div class="main main-padding">

    <div class="col-sm-12 box your-tickets">
        <div class="inner">
            <h2 class="inner-title-padding">{$Top.i18n("AccountPage__Tickets__HistoryMessage")}</h2>
            <div class="subbox">
                <% if $DrawTicketsAccountPage %>
                    <div class="tickets"
                         data-pagination="{$Link}"
                         data-pagination-element=".pagination-top,.pagination-bottom"
                         data-pagination-clear=".ticket"
                         data-pagination-total="{$DrawTicketsAccountPage.TotalPages}"
                         data-pagination-size="5">
                        <% loop $DrawTicketsAccountPage %>
                            $Render
                        <% end_loop %>
                    </div>
                    <div class="clearfix"></div>
                    <div class="text-center"><div class="pagination-bottom"></div></div>
                <% end_if %>
            </div>
        </div>
    </div>
    <div class="clearfix"></div>
    <% include Accordion %>
    <div class="clearfix"></div>
</div>
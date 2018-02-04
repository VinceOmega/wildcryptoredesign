<% if $Config %><% if $Config.On %>
    <div class="account">
        <div class="account__section">
            <div class="account__headerbox">
                <h2 class="account__header">$Config.Title</h2>
            </div>
            <div class="account__content">
                <% if $Tickets.length %>
                    <div class="tickets"
                        <% if $Config.Pagination %>
                         data-pagination="{$Config.Pagination.Link}"
                         data-pagination-element=".pagination-top,.pagination-bottom"
                         data-pagination-clear=".ticket"
                             <%--data-pagination-total="{$DrawTicketsAccountPage.TotalPages}"--%>
                         data-pagination-total="{$Tickets.TotalPages}"
                         data-pagination-size="{$Config.Pagination.PageSize}"
                        <% end_if %>
                    >
                        <div class="content">
                            <% loop $Tickets %>
                                $Render("RaffleTicket_ForWidget")
                            <% end_loop %>
                        </div>
                    </div>
                    <div class="clearfix"></div>
                    <% if $Config.Pagination %>
                        <div class="text-center">
                            <div class="pagination-bottom"></div>
                        </div>
                    <% end_if %>
                <% else %>
                    <div class="cmsinput cmsinput--faint">
                        <h4>You have no tickets</h4>
                    </div>
                <% end_if %>
            </div>
        </div>
    </div>
<% end_if %><% end_if %>
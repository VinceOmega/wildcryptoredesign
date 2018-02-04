$Draw.PrizeTable
<div class="clearfix"></div>
<% if $isLoggedIn %>
    <% if $Tickets %>
        <div class="pageheader">{$Top.i18n("Draw__YourTickets")}</div>
        <div class="box your-tickets results tickets-pagination">
            <div class="tickets text-center spacer"
                 data-pagination="{$Draw.Link(myTickets)}"
                 data-pagination-element=".pagination-top,.pagination-bottom"
                 data-pagination-clear=".ticket"
                 data-pagination-total="{$Tickets.TotalPages}"
                 data-pagination-size="{$Draw.TicketPageSize}"
            >
                <div class="text-left content">
                    <% loop $Tickets %>
                        $Render
                    <% end_loop %>
                </div>
                <div class="clearfix"></div>
            </div>
            <div class="text-center"><div class="pagination-bottom"></div></div>
        </div>
    <% end_if %>
<% end_if %>
<% include Accordion %>
<% include InstantWinGames %>
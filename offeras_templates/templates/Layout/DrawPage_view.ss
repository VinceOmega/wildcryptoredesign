<div class="main main-padding">
    <% with $Draw %>
        <div class="raffle-information cmsinput cmsinput--faint">
            <h1>$name
                <% if $drawNumber %>
                    <div class="draw-number">Draw $drawNumber on $closingTime.Long</div>
                <% end_if %>
            </h1>

            <div class="description">
                $Details.description
            </div>
        </div>
    <% end_with %>

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

    <div class="row accordion-area">
        <% include Accordion %>
    </div>
    <% include InstantWinGames %>
    <div class="clearfix footer-space"></div>
</div>
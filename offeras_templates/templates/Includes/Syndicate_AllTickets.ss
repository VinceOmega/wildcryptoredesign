<% if $Syndicate.Tickets %>
    <div class="title">{$Top.i18n("Draw__Syndicate__SyndicateTickets")}</div>
    <div class="no-padding box your-tickets results">
        <div class="tickets text-center spacer"
             data-pagination="{$Syndicate.Link(mySyndicateTickets)}"
             data-pagination-element=".pagination-top,.pagination-bottom"
             data-pagination-clear=".ticket"
             data-pagination-total="<% with $Syndicate %>{$Tickets.TotalPages}<% end_with %>"
             data-pagination-size="{$Draw.TicketPageSize}"
                >
            <div class="text-left content">
                <% loop $Syndicate.Tickets %>
                <div class="col-sm-12 no-padding">
                    <section class="panel panel-border">
                        <div class="panel-body panel-body-padding">
                            <div class="col-sm-6 inner-title-padding ticket-header">
                                <h5>Ticket Bought: $Created.Format(d F Y)</h5>
                            </div>
                            <div class="col-sm-6 inner-title-padding text-align-right ticket-header">
                                <h5>$ValidFor</h5>
                            </div>
                            <div class="clearfix"></div>
                            <table class="table">
                                <thead>
                                <tr>
                                    <th>{$Top.i18n("Draw__Lotto__YourLines")}</th>
                                </tr>
                                </thead>
                                <tbody>
                                    <% if $Lines %>
                                        <% loop $Lines %>
                                            <tr>
                                                <td class="table-width-20">
                                                    <div class="ticket__line row">
                                                        <% loop $Numbers %>
                                                            <div class="ticket__number col-xs-2">
                                                                <span class="$BallColour">$Number</span>
                                                            </div>
                                                        <% end_loop %>
                                                    </div>
                                                </td>
                                            </tr>
                                        <% end_loop %>
                                    <% end_if %>
                                </tbody>
                            </table>
                        </div>
                    </section>
                </div>
                <% end_loop %>
            </div>
        </div>
        <div class="text-center"><div class="pagination-bottom"></div></div>
    </div>
<% else %>
    <h2>{$Top.i18n("Draw__Syndicate__NoTicketsMessage")}</h2>
<% end_if %>


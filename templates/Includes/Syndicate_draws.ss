<% if $Draw.status == "DRAWN" %><% if $Draw %><% with $Draw %>
    <div class="title">{$Top.i18n("Draw__DrawResults")}</div>
    <div class="col-sm-12 no-padding box your-tickets syndicate-tickets results">
        <div class="draw card col-xs-12">
            <% loop $AllNumbers %>
                <div class="col-xs-1 text-center draw__lotto__number">
                    <div class="+big">
                        <span class="$BallColour focus">$Number</span>
                    </div>
                </div>
            <% end_loop %>
            <% loop $AllBonusNumbers %>
            <div class="col-xs-1 text-center draw__lotto__number bonus-ball">
                <div class="+big">
                    <span>$Number</span>
                </div>
            </div>
            <% end_loop %>
        </div>
    </div>
    <div class="clearfix"></div>
<% end_with %><% end_if %><% end_if %>

<% if $Syndicate.Tickets %>
    <div class="title">{$Top.i18n("Draw__Syndicate__SyndicateTickets")}</div>
    <div class="no-padding box your-tickets results">
        <div class="tickets text-center spacer"
             data-pagination="{$Syndicate.Link(tickets)}"
             data-pagination-element=".pagination-top,.pagination-bottom"
             data-pagination-parent="true"
             data-pagination-clear=".ticket"
             data-pagination-total="<% with $Syndicate %>{$Tickets.TotalPages}<% end_with %>"
             data-pagination-size="{$Draw.TicketPageSize}"
             data-pagination-additional="drawNumber={$Draw.drawNumber}"
                >
            <div class="text-left content">
                <% loop $Syndicate.Tickets %>
                    $Render
                <% end_loop %>
            </div>
        </div>
        <div class="text-center"><div class="pagination-bottom"></div></div>
    </div>
<% else %>
    <h2>{$Top.i18n("Draw__Syndicate__NoTicketsMessage")}</h2>
<% end_if %>


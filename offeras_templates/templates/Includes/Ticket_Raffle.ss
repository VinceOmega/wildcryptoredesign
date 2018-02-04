<div class="ticket">
    <div class="col-xs-6 col-sm-3 col-md-2 no-padding inner-title-padding left">
        <%-- <h5 class="left">Ticket Bought: $Created.Format(d F Y)</h5> --%>
        <div class="ticket__line row">
            <% loop $Numbers %>
                <h3>$Number</h3>
            <% end_loop %>
        </div>
    </div>
</div>
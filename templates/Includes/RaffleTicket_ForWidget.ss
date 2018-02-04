<%-- TODO: Merge into LottoTicket to allow for Configuration Based settings --%>
<% if $Valid %>
    <div class="col-sm-12 no-padding">
        <div class="col-xs-12 col-sm-8">$Created.Format(d F Y H:m:s)</div>
        <div class="col-xs-12 col-sm-4 text-center"><% loop $Numbers %><p>$Number</p><% end_loop %></div>
    </div>
<% end_if %>
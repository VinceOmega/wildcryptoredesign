<% if $Notifications %>
    <% loop $Notifications %>
        <% include Generic_Notify %>
    <% end_loop %>
<% end_if %>
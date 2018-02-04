<% if $Messages %>
    <% loop $Messages %>
        <div class="message message--$Type">$Message</div>
    <% end_loop %>
<% end_if %>
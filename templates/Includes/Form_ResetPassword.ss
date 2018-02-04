<form $FormAttributes role="form">
    <% if $Message %>
        <p id="{$FormName}_error" class="message $MessageType">$Message</p>
    <% else %>
        <p id="{$FormName}_error" class="message $MessageType" style="display: none"></p>
    <% end_if %>
    
        <fieldset>
            
            <% loop $Fields %>
                <% if $isHidden %><% else %><h3>{$Title}</h3><% end_if %>
                $Field
                <% include Generic_Form_error %>
            <% end_loop %>
            <% if $actions %>
                <div class="Actions">
                    <% loop $actions %>$Field<% end_loop %>
                </div>
            <% end_if %>
        </fieldset>
</form>
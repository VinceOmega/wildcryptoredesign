<form $FormAttributes class="form" role="form">
    <% if $Message %>
        <p id="{$FormName}_error" class="message $MessageType">$Message</p>
    <% else %>
        <p id="{$FormName}_error" class="message $MessageType" style="display: none"></p>
    <% end_if %>

    <% loop $Fields %>
        <div class="form__fieldbox <% if $Type = "hidden" %>hidden<% end_if %>">
            <div class="form__fieldtitle form__fieldtitle--large">
                <label for="{$Top.FormName}_$Name">$Title</label>
            </div>
            <div class="form__fieldholder form__fieldholder--fill">$Field</div>
            <% include Generic_Form_Error %>
        </div>
    <% end_loop %>

    <% if $Actions %>
        <div class="containerwrap containerwrap--expand">
            <% loop $Actions %>
                <div class="containerwrap__item--gap containerwrap__item--grow">$Field</div>
            <% end_loop %>
        </div>
    <% end_if %>
</form>
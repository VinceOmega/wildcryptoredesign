<form $FormAttributes role="form" class="padding">
    <% if $Message %>
        <p id="{$FormName}_error" class="message message--$MessageType">$Message</p>
    <% else %>
        <p id="{$FormName}_error" class="message message--$MessageType" style="display: none"></p>
    <% end_if %>

    <fieldset>
        <h3>Your response</h3>
        $Fields.dataFieldByName(comment)
        $Fields.dataFieldByName(supportQueryId)
        $Fields.dataFieldByName(SecurityID)
    </fieldset>

    <% if $Actions %>
        <div class="containerwrap containerwrap--expand containerwrap--end">
            <% loop $Actions %>
                <div class="containerwrap__item--gap">$Field</div>
            <% end_loop %>
        </div>
    <% end_if %>
</form>
<form $FormAttributes role="form">
    <% if $Message %>
        <p id="{$FormName}_error" class="message $MessageType">$Message</p>
    <% else %>
        <p id="{$FormName}_error" class="message $MessageType" style="display: none"></p>
    <% end_if %>

    <fieldset>
        $Fields.dataFieldByName(syndicateId)
        $Fields.dataFieldByName(amount)
        $Fields.dataFieldByName(SecurityID)
    </fieldset>

    <% if $Actions %>
        <div class="Actions">
            <% loop $Actions %>$Field<% end_loop %>
        </div>
    <% end_if %>
    <div class="button secondarycolour xi post js thinner inline submit">{$Top.i18n("Draw__Syndicate__Purchase")}</div>
</form>
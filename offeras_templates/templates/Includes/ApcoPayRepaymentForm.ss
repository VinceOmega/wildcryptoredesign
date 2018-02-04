<form $FormAttributes class="form" role="form">
    <fieldset>
        <% loop $Fields %>
            <% if $Type = "hidden" %>
                {$Field}
            <% else %>
            <div id="$Name" class="form__fieldbox form__fieldbox--wrap">
                <div class="form__fieldtitle form__fieldtitle--floatright">
                    <label for="{$Top.FormName}_$Name">$Title</label>
                </div>
                <div class="form__fieldholder">
                    $Field
                </div>
                <% if $Required %>
                    <img src="themes/ofertas/images/asterisk.png" style="margin-left:5px; width: 8px;" alt="{$Top.i18n("Form__CompulsoryField")}"/>
                <% else %>
                    <img src="themes/ofertas/images/asterisk.png" style="margin-left:5px; width: 8px; opacity: 0;"/>
                <% end_if %>
                <% include Generic_Form_Error %>
            </div>
            <% end_if %>
        <% end_loop %>

        <div class="form__fieldbox form__fieldbox--wrap" style="margin-top:20px; float:right; margin-right:13px;">
            <% if $Actions %>
                <% loop $Actions %>
                  <div class="form__fieldholder">
                    $Field
                  </div>
                <% end_loop %>
            <% end_if %>
        </div>
    </fieldset>
</form>

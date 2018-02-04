<% require javascript('themes/baja/javascript/form/repayment_form_script.js') %>
<form $FormAttributes class="form" role="form">

    <h4 class="cmsinput cmsinput--ignore header--block header--center">{$Top.i18n("Repayment__YouHave")} {$AvailableBalance} {$Top.i18n("Repayment__WithdrawnMessage")}</h4>

    <fieldset>
        <% loop $Fields %>
            <div id="$Name" class="form__fieldbox form__fieldbox--wrap">
                <% if $Name = "SecurityID" %>
                    $Field
                <% else %>
                    <div class="form__fieldtitle form__fieldtitle--large">
                        <label for="{$Top.FormName}_$Name">$Title</label>
                    </div>
                    <div class="form__fieldholder">$Field</div>
                <% end_if %>
                <% if $Top.Required($Name) %>
                    <img src="themes/twelve40/images/asterisk.png" style="margin-left:5px; width: 8px;" alt="{$Top.i18n("Form__CompulsoryField")}"/>
                <% else %>
                    <img src="themes/twelve40/images/asterisk.png" style="margin-left:5px; width: 8px; opacity: 0;"/>
                <% end_if %>
                <% include Generic_Form_Error %>
            </div>
        <% end_loop %>

        <div class="form__actionbox">
            <% if $Actions %>
                <% loop $Actions %>$Field<% end_loop %>
            <% end_if %>

            <div class="form__compularyfields">
                <img src="themes/twelve40/images/asterisk.png" alt="Compulsory Field"/> = {$Top.i18n("Form__CompulsoryFields")}
            </div>
        </div>
    </fieldset>
</form>
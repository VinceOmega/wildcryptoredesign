<form $FormAttributes class="form" role="form">
    <fieldset>
        <h3>
            <% if $KycStatus = "REJECTED" %>
                {$Top.i18n("KycUpload__RejectedMessage")}
            <% else_if $KycStatus = "PENDING" %>
                {$Top.i18n("KycUpload__PendingMessage")}
            <% else %>
                {$Top.i18n("KycUpload__Message")}
            <% end_if %>
        </h3>
        <% if $KycStatus != "PENDING" %>
        <div class="containerwrap containerwrap--nowrap containerwrap--xswrap">
            <div class="containerwrap__item--grow">
                <div class="focusarea__formdescription cmsinput cmsinput--bright cmsinput--small">
                    $Explanation
                </div>
            </div>
            <div class="containerwrap__item--grow">
                <% loop $Fields %>
                    <div id="$Name" class="form__fieldbox form__fieldbox--wrap">
                        <% if $Name = "SecurityID" %>
                        $Field
                        <% else %>
                            <div class="form__fieldtitle form__fieldtitle--large form__fieldtitle--floatright">
                                <% if $Required %>
                                    <img src="themes/twelve40/images/asterisk.png" style="margin-left:5px; width: 8px;" alt="{$Top.i18n("Form__CompulsoryField")}"/>
                                <% else %>
                                    <img src="themes/twelve40/images/asterisk.png" style="margin-left:5px; width: 8px; opacity: 0;"/>
                                <% end_if %>
                                <label for="{$Top.FormName}_$Name">$Title</label>
                            </div>
                            <div class="form__fieldholder" style="">$Field</div>
                            <% include Generic_Form_Error %>
                        <% end_if %>
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
            </div>
        </div>
        <% end_if %>
    </fieldset>
</form>
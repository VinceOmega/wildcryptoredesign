<form $FormAttributes class="form form--responsive form--autotick" role="form">
	
	<% if $Message %>
		<div class="form__errormessage">
			<% include Generic_Form_Error %>
        </div>
	<% end_if %>

	<fieldset>

		<% loop $Fields %>
			<% if $Type = "hidden" %>
				{$Field}
			<% else %>
			<div id="$Name" class="form__fieldbox form__fieldbox--wrap $Name">
	            <div class="form__fieldtitle form__fieldtitle--floatright">
				    <label for="{$Top.FormName}_$Name">$Title</label>
				</div>
				<% if Name = termsAndConditions %>
	                <div class="form__fieldholder">
						$Field
	                    <a class="form__fieldholdertext" href="terms-and-conditions/">{$Top.i18n("Form__TermsMessage")}</a>
					</div>
	                <img src="themes/wild/images/asterisk.png" style="margin-left:5px; width: 8px; opacity:0;" alt="{$Top.i18n("Form__CompulsoryField")}"/>
				<% else_if Name = eighteen %>
	                <div class="form__fieldholder">
						$Field
	                    <label class="form__fieldholdertext">
	                        Yes
	                    </label>
					</div>
	                <img src="themes/wild/images/asterisk.png" style="margin-left:5px; width: 8px; opacity:0;" alt="{$Top.i18n("Form__CompulsoryField")}"/>
				<% else %>
	                <div class="form__fieldholder">
						$Field
	                </div>
	                <img src="themes/wild/images/asterisk.png" style="margin-left:5px; width: 8px; opacity:0; <% if $Required %>opacity: 1;<% end_if %>" alt="{$Top.i18n("Form__CompulsoryField")}"/>
				<% end_if %>
				<% include Generic_Form_Error %>
			</div>
			<% end_if %>
		<% end_loop %>

		$Fields.dataFieldByName(SecurityID)
	</fieldset>

    <div class="form__fieldbox form__fieldbox--wrap">
        <div class="form__fieldtitle form__fieldtitle--floatright">
            <label></label>
        </div>
        <div class="form__fieldholder" style="flex-direction: column;">
			<% if $Actions %>
				<% loop $Actions %>$Field<% end_loop %>
			<% end_if %>

            <div class="form__compularyfields">
                <img src="themes/ofertas/images/asterisk.png" alt="Compulsory Field"/> = {$Top.i18n("Form__CompulsoryFields")}
            </div>
        </div>
        <img src="themes/wild/images/asterisk.png" style="margin-left:5px; width: 8px; opacity:0;" alt="{$Top.i18n("Form__CompulsoryField")}"/>
    </div>
</form>
<form $FormAttributes class="form" role="form">
	<% if $Message %>
		<p id="{$FormName}_error" class="form__errormessage $MessageType">$Message</p>
	<% else %>
		<p id="{$FormName}_error" class="form__errormessage $MessageType" style="display: none"></p>
	<% end_if %>

	<fieldset>
		<% loop $Fields %>
		<% if $Name = SecurityID %><% else %>
		<div id="$Name" class="form__fieldbox $Name <% if $Message %>form__fieldbox--error<% end_if %>" >
            $Field
			<% if $Message %>
				<span id="{$Top.FormName}_error" class="form__fielderror $MessageType">
					$Message
				</span>
			<% end_if %>
		</div>
		<% end_if %>
		<% end_loop %>
		$Fields.dataFieldByName(SecurityID)
	</fieldset>
    <a class="form__forgotpassword" href="{$Top.SignUpLink}forgottenpassword">{$Top.i18n("APILoginForm__ForgotPassword")}</a>

	<% if $Actions %>
	<div>
		<% loop $Actions %>$Field<% end_loop %>
	</div>
	<% end_if %>
</form>
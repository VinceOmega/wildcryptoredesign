<form $FormAttributes role="form">
    <% if $Message %>
        <p id="{$FormName}_error" class="form__errormessage $MessageType">$Message</p>
    <% else %>
        <p id="{$FormName}_error" class="form__errormessage $MessageType" style="display: none"></p>
    <% end_if %>
        <fieldset>
            <%--<h3>Your Email Address</h3>--%>
            <p style="margin:20px 0;">Enter the email address you registered with below to reset your password.</p>
            $Fields.dataFieldByName(email)

            <% if $actions %>
                <div class="form__actions" style="padding-top: 20px; padding-bottom:15px;">
                    <% loop $actions %>$Field<% end_loop %>
                </div>
            <% end_if %>

        </fieldset>

    $Fields.dataFieldByName(SecurityID)
</form>
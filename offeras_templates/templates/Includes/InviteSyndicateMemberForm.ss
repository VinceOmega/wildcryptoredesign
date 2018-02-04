<form $FormAttributes role="form">
    <div class="col-sm-8 col-xs-12">
        <fieldset>
            <% loop $Composite %>
            <div class="member-invite">
                <div class="col-sm-6 left-field member-field">$firstName</div>
                <div class="col-sm-6 right-field member-field">$lastName</div>
                <div class="col-sm-12 member-field">$email</div>

                <div class="col-sm-6 message {$firstName.MessageType}">$firstName.Message</div>
                <div class="col-sm-6 message {$lastName.MessageType}">$lastName.Message</div>
                <div class="col-sm-12 message {$email.MessageType}">$email.Message</div>
            </div>
            <% end_loop %>

            $Fields.dataFieldByName(syndicateId)
            $Fields.dataFieldByName(SecurityID)

        </fieldset>
    </div>
    
    <div class="col-sm-4 col-xs-12">
        <% if $Actions %>
            <div class="Actions">
                <% loop $Actions %>$Field<% end_loop %>
            </div>
        <% end_if %>
    </div>
</form>
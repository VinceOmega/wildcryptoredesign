<form $FormAttributes class="form form--nomargin" role="form">
    <% if $Message %>
        <p id="{$FormName}_error" class="message message--$MessageType">$Message</p>
    <% else %>
        <p id="{$FormName}_error" class="message message--$MessageType" style="display: none"></p>
    <% end_if %>

    <fieldset class="form__fieldset">
        <h3 class="account__fieldname">Name</h3>
        <div class="containerwrap containerwrap--nowrap containerwrap--xswrap containerwrap--expand">
            <div class="containerwrap__item--grow containerwrap__item--gap">
                $Fields.dataFieldByName(firstName)
            </div>
            <div class="containerwrap__item--grow containerwrap__item--gap">
                $Fields.dataFieldByName(lastName)
            </div>
        </div>
    </fieldset>
    <div class="containerwrap containerwrap--nowrap containerwrap--xswrap containerwrap--expand">
        <div class="containerwrap__item--grow containerwrap__item--gap">
            <fieldset class="form__fieldset">
                <h3 class="account__fieldname">Address</h3>
                <div class="field-group address">
                    <div class="field address-one">
                        <% with $Fields.dataFieldByName(address1) %>
                            $Field
                            <% if $Message %>
                                <div class="message $MessageType">$Message</div>
                            <% end_if %>
                        <% end_with %>
                    </div>
                    <div class="field address-two">
                        <% with $Fields.dataFieldByName(address2) %>
                            $Field
                            <% if $Message %>
                                <div class="message $MessageType">$Message</div>
                            <% end_if %>
                        <% end_with %>
                    </div>
                    <div class="field address3">
                        <% with $Fields.dataFieldByName(address3) %>
                            $Field
                            <% if $Message %>
                                <div class="message $MessageType">$Message</div>
                            <% end_if %>
                        <% end_with %>
                    </div>
                    <div class="field country">
                        <% with $Fields.dataFieldByName(country) %>
                            $Field
                            <% if $Message %>
                                <div class="message $MessageType">$Message</div>
                            <% end_if %>
                        <% end_with %>
                    </div>
                    <div class="field post-code">
                        <% with $Fields.dataFieldByName(postCode) %>
                            $Field
                            <% if $Message %>
                                <div class="message $MessageType">$Message</div>
                            <% end_if %>
                        <% end_with %>
                    </div>
                </div>
            </fieldset>
            <fieldset class="form__fieldset">
                <h3 class="account__fieldname">Email</h3>
                <div class="field-group email">
                    <div class="field email">
                        <% with $Fields.dataFieldByName(email) %>
                            $Field
                            <% if $Message %>
                                <div class="message $MessageType">$Message</div>
                            <% end_if %>
                        <% end_with %>
                    </div>
                </div>
            </fieldset>
            <fieldset class="form__fieldset">
                <h3 class="account__fieldname">Confirm Email</h3>
                <div class="field-group confirm-email">
                    <div class="field confirm-email">
                        <% with $Fields.dataFieldByName(confirmEmail) %>
                            $Field
                            <% if $Message %>
                                <div class="message $MessageType">$Message</div>
                            <% end_if %>
                        <% end_with %>
                    </div>
                </div>
            </fieldset>
            <fieldset class="form__fieldset">
                <h3 class="account__fieldname">Date of Birth</h3>
                <div class="field">
                    <% with $Fields.dataFieldByName(dateOfBirth) %>
                        $Field
                        <% if $Message %>
                            <div class="message $MessageType">$Message</div>
                        <% end_if %>
                    <% end_with %>
                </div>
            </fieldset>
        </div>
        <div class="containerwrap__item--grow containerwrap__item--gap">
            <fieldset class="form__fieldset">
                <h3 class="account__fieldname">Telephone Number (Landline)</h3>
                <div class="field-group telephone-number">
                    <div class="field telephone-number">
                        <% with $Fields.dataFieldByName(telephoneNumber) %>
                            $Field
                            <% if $Message %>
                                <div class="message $MessageType">$Message</div>
                            <% end_if %>
                        <% end_with %>
                    </div>
                </div>
            </fieldset>
            <fieldset class="form__fieldset">
                <h3 class="account__fieldname">Change Password</h3>
                <div class="field-group password">
                    <div class="field old-password">
                        <% with $Fields.dataFieldByName(oldPassword) %>
                            $Field
                            <% if $Message %>
                                <div class="message $MessageType">$Message</div>
                            <% end_if %>
                        <% end_with %>
                    </div>
                    <div class="field new-password">
                        <% with $Fields.dataFieldByName(newPassword) %>
                            $Field
                            <% if $Message %>
                                <div class="message $MessageType">$Message</div>
                            <% end_if %>
                        <% end_with %>
                    </div>
                    <div class="field confirm-password">
                        <% with $Fields.dataFieldByName(confirmPassword) %>
                            $Field
                            <% if $Message %>
                                <div class="message $MessageType">$Message</div>
                            <% end_if %>
                        <% end_with %>
                    </div>
                </div>
            </fieldset>
        </div>
    </div>
    <% if $Actions %>
        <div class="containerwrap">
            <% loop $Actions %>
                $Field
            <% end_loop %>
        </div>
    <% end_if %>

    $Fields.dataFieldByName(SecurityID)
    $Fields.dataFieldByName(county)
</form>
<form $FormAttributes class="form" role="form" data-synchronize="top-up">
    <% include Generic_Form_error %>
    <fieldset>
        <% if $hasAddress %>
            <h3>Redeem your bonus code</h3>


            <% loop $CodeFields %>
            <div class="form__fieldbox form__fieldbox--wrap <% if $Payload.isHidden%> hidden<% end_if %>">
                <% with $Payload %>
                    <div class="form__fieldtitle form__fieldtitle--floatright">
                        <label for="{$Top.FormName}_{$Name}">$Title</label>
                    </div>
                    <div class="form__fieldholder">
                        $Field
                    </div>
                <% end_with %>
                <img src="themes/ofertas/images/asterisk.png"
                     style="margin-left:5px; width: 8px; opacity:0; <% if $Required %>opacity: 1;<% end_if %>"
                     alt="Compulsory Field"/>

                <% with $Payload %>
                    <% include Generic_Form_Error %>
                <% end_with %>
            </div>
            <% end_loop %>


            <% if $hasAddress %>
                <div class="form-details address" data-switch-key="prizeBalance">
                    <h3>Billing Address</h3>

                    <% loop $AddressFields %>
                        <div class="form__fieldbox form__fieldbox--wrap <% if $Payload.isHidden%> hidden<% end_if %>">
                            <% with $Payload %>
                                <div class="form__fieldtitle form__fieldtitle--floatright">
                                    <label for="{$Top.FormName}_{$Name}">$Title</label>
                                </div>
                                <div class="form__fieldholder">
                                    $Field
                                </div>
                            <% end_with %>
                            <img src="themes/ofertas/images/asterisk.png"
                                 style="margin-left:5px; width: 8px; opacity:0; <% if $Required %>opacity: 1;<% end_if %>"
                                 alt="Compulsory Field"/>

                            <% with $Payload %>
                                <% include Generic_Form_Error %>
                            <% end_with %>
                        </div>
                    <% end_loop %>
                </div>
            <% end_if %>

            <div class="form__actionbox form__actionbox--noindent">
                <% if $actions %>
                    <% loop $actions %>$Field<% end_loop %>
                <% end_if %>

                <div class="form__compularyfields">
                    <img src="themes/ofertas/images/asterisk.png" alt="Compulsory Field"/> = {$Top.i18n("Form__CompulsoryFields")}
                </div>
            </div>
        <% else %>
            <% loop $CodeFields %>
                <div class="form__fieldbox form__fieldbox--wrap <% if $Payload.isHidden%> hidden<% end_if %>">
                    <% with $Payload %>
                        <div class="form__fieldholder">
                            $Field
                        </div>
                    <% end_with %>

                    <% with $Payload %>
                        <% include Generic_Form_Error %>
                    <% end_with %>
                </div>
            <% end_loop %>

            <% if $Actions %>
                <div class="containerwrap containerwrap--justifycenter">
                    <% loop $actions %>
                        $Field
                    <% end_loop %>
                </div>
            <% end_if %>

        <% end_if %>

    </fieldset>
</form>
<% require javascript('themes/ofertas/javascript/form/repayment_form_script.js') %>
<form $FormAttributes class="form" role="form">

    <h4 class="cmsinput cmsinput--ignore header--block" style="padding-left: 5px;">{$Top.i18n("Repayment__YouHave")} WILD{$Top.forceDecimal($AvailableBalance)} {$Top.i18n("Repayment__WithdrawnMessage")}</h4>

    <fieldset>

        $Fields.dataFieldByName(SecurityID)

        <% with $Fields.dataFieldByName(amount) %>
            <div id="$Name" class="form__fieldbox form__fieldbox--wrap">
                <div class="form__fieldtitle form__fieldtitle--large">
                    <label for="{$Top.FormName}_$Name">{$Top.i18n("Repayment__WithdrawMessage")}</label>
                </div>
                <div class="form__fieldholder form__fieldholder--small">
                    <span class="currencyinput currencyinput--left">WILD</span>
                    $Field
                    <span class="currencyinput currencyinput--right">.00</span>
                </div>
                <img src="themes/ofertas/images/asterisk.png" style="margin-left:5px; width: 8px;" alt="{$Top.i18n("Form__CompulsoryField")}"/>
                <% include Generic_Form_Error %>
            </div>
        <% end_with %>

        <% if $hasMultipleProviders %>
            $Fields.dataFieldByName(repaymentProvider)
        <% end_if %>

        <div<% if $Charge = 0 %> class="hidden"<% end_if %>>
            <h3>{$Top.i18n("Repayment__Summary")}</h3>
            <span class="hidden" data-api="repayment.amount" data-repayment="repayment.amount">0</span>
            <div class="containerwrap topupform__summarybox">
                <div class="containerwrap__item--grow">{$Top.i18n("Repayment__Charge")}</div>
                <div>&#36;<span data-repayment="repayment.charge">{$Charge}</span></div>
            </div>

            <div class="containerwrap topupform__summarybox">
                <div class="containerwrap__item--grow">{$Top.i18n("Repayment__Total")}</div>
                <div>&#36;<span data-repayment="repayment.total">0</span></div>
            </div>
        </div>

        <div class="form__actionbox withdraw-button">
            <% if $Actions %>
                <% loop $Actions %>$Field<% end_loop %>
            <% end_if %>
        </div>
    </fieldset>
</form>

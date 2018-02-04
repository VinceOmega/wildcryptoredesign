<% require javascript('themes/ofertas/javascript/form/syndicate_register_form_script.js') %>
<form $FormAttributes role="form">
    <% if $Message %>
        <p id="{$FormName}_error" class="message $MessageType">$Message</p>
    <% else %>
        <p id="{$FormName}_error" class="message $MessageType" style="display: none"></p>
    <% end_if %>
    
    <fieldset class="col-sm-12 col-xs-12 no-padding">
        <h3 class="form-title-margin">{$Top.i18n("Draw__Syndicate__CreateYourSyndicateName")}</h3>
        $Fields.dataFieldByName(name)

        <h3 class="form-title-margin">{$Top.i18n("Draw__Syndicate__ChooseALotto")}</h3>
        $Fields.dataFieldByName(drawId)
        
        <div data-form-name="numOfDraws" style="display:none;">
            <h3 class="form-title-margin">{$Top.i18n("Draw__Syndicate__ForHowManyDraws")}</h3>
            $Fields.dataFieldByName(numOfDraws)
        </div>

        <h3 class="form-title-margin">{$Top.i18n("Draw__Syndicate__ChooseMessage")}</h3>
        <div class="currency-field --no-left">
            $Fields.dataFieldByName(share)<span class="penny token">t</span>
        </div>


        <div class="row">
            <div class="Actions col-sm-12 col-xs-12">
                <div class="form-controls">
                    <div type="reset" class="button secondarycolour theta cancel js cancel col-xs-12 col-sm-6 no-margin reset">{$Top.i18n("Draw__Syndicate__Reset")}</div>
                </div>
                <% if $Actions %>                   
                    <% loop $Actions %>$Field<% end_loop %>
                <% end_if %>
                
            </div>
        </div>
        
        <div class="hidden">
            $Fields.dataFieldByName(SecurityID)
        </div>

    </fieldset>

    <div class="clearfix"></div>
</form>

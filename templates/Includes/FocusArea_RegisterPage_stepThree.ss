<h1 class="heading">{$Top.i18n("Register__YouAreReadyToPlay")}</h1>
<div class="clearfix"></div>
<div class="good-luck no-padding">
	<div class="col-xs-12 col-sm-6 context summary-margin no-padding">
        <div class="account-balance">
	    <h3 class="align">Your account balance is <span>{$getBalance.Inline}</span></h3>
	</div>

	<p>{$Top.i18n("Register__YourAccountIsActive")}</p>
	<p>{$Top.i18n("Register__YouCanPlayMessage")}</p>
	<h3 class="gl-text">{$Top.i18n("Register__GoodLuck")}</h3>
    </div>
    <% if $RegisteredComplete %>
    <div class="col-xs-12 col-sm-6 summary no-padding summary-margin">
        <div class="caption desktop mobile register-info complete">
            $RegisteredComplete
        </div>
    </div>
    <% end_if %>
	
</div>
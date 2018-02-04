<div class="focusarea $Class">
    <div class="outer">
        <div class="inner">
            <div class="raffle card row">
                <h1 class="heading">{$Top.i18n("Register__TopUpMessage")}</h1>
                <div class="col-xs-12 col-sm-6 context">
                    $TopUpForm
                </div>
                <div class="col-xs-12 col-sm-6 summary">
                    <h3>{$Top.i18n("Register__Summary")}</h3>
                    <div class="panel">
                        <div class="row"><span class="col-xs-8">{$Top.i18n("Register__CurrentBalance")}</span> <span class="col-xs-4 data" data-api="wallet.tokens" data-topup="topup.balance">{$getBalance}</span><span class="token white">t</span></div>
                        <div class="row"><span class="col-xs-8">{$Top.i18n("Register__TopUpAmount")}</span> <span class="col-xs-4 data" data-topup="topup.amount">€0</span></div>
                        <span class="col-xs-12 separator margin"></span>
                        <div class="row"><span class="col-xs-8">{$Top.i18n("Register__NewBalance")}</span><span class="col-xs-4 data" data-topup="topup.total">€{$getBalance}</span></div>
                        <div class="clearfix"></div>
                    </div>
                </div>
            </div>
            <div class="clearfix"></div>
        </div>
    </div>
</div>

<div class="main">
    <% include Accordion %>
</div>
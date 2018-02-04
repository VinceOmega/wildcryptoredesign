<h1 class="heading">{$Top.i18n("Register__CongratulationsAlmostMessage")}</h1>
<% if $SubTitle %>
    <div class="clearfix"></div>
    <div class="col-xs-12 col-sm-7 no-padding subTitle-padding"><p>$SubTitle</p></div>
<% end_if %>
<div class="row">
    <div class="col-xs-12 col-sm-6 context">
        $TopUpForm
    </div>
    <div class="col-xs-12 col-sm-6 summary">
        <div class="panel">
            <div class="row">
                <span class="col-xs-8">{$Top.i18n("Register__CurrentBalance")}</span> <span class="col-xs-4 data">
                    <span data-api="wallet.tokens" data-topup="topup.balance">{$getBalance}</span><span class="token">t</span>
                </span>
            </div>
            <div class="row"><span class="col-xs-8">{$Top.i18n("Register__CurrentBalance")}</span> <span class="col-xs-4 data"><span>WILD</span><span  data-topup="topup.amount">0</span></div>
            <span class="col-xs-12 separator margin"></span>
            <div class="row"><span class="col-xs-8">{$Top.i18n("Register__NewBalance")}</span><span class="col-xs-4 data"><span data-topup="topup.total">{$getBalance}</span><span>t</span></span></div>
            <div class="clearfix"></div>
        </div>
    </div>
</div>
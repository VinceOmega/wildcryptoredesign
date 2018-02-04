<div class="main main-padding">
    <div class="wrapper what-next-padding">
        <div class="title">{$Top.i18n("Register__WhatNext")}</div>
        <div class="content col-xs-12 no-padding">
            <% if $RaffleSection %>
            <div class="row">
                <div class="col-md-12"><h3>{$Top.i18n("Register__BuyTickets")}</h3></div>
                <div class="col-md-9">
                    $RaffleSection
                </div>
                <div class="col-md-3 whats-next-action">
                    <a class="button secondarycolour beta" href="{$DrawLink}">{$Top.i18n("Register__ViewLotteries")}</a>
                </div>
            </div>
            <hr>
            <% end_if %>
            <% if $SyndicateSection %>
            <div class="row">
                <div class="col-md-12"><h3>{$Top.i18n("Register__SetUpASyndicate")}</h3></div>
                <div class="col-md-9">
                    $SyndicateSection
                </div>
                <div class="col-md-3 whats-next-action">
                    <a class="button secondarycolour beta" href="{$SyndicateLink}/">{$Top.i18n("Register__CreateASyndicate")}</a>
                </div>
            </div>
            <hr>
            <% end_if %>
            <% if $IWGSection %>
            <div class="row">
                <div class="col-md-12"><h3>{$Top.i18n("Register__PlayGames")}</h3></div>
                <div class="col-md-9">
                    $IWGSection
                </div>
                <div class="col-md-3 whats-next-action">
                    <a class="button secondarycolour beta" href="{$IWGLink}">{$Top.i18n("Register__PlayGames")}</a>
                </div>
            </div>
            <hr>
            <% end_if %>
        </div>
        <div class="clearfix"></div>
        <% include Accordion %>
    </div>
</div>
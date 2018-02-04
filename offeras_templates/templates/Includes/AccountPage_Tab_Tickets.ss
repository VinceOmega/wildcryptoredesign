<div class="main main-padding accountPage-index etabs tab-container">
    <ul class='etabs__tabs'>
        <li class='etabs__tabs__tab {$IsTabActive(tickets)} {$IsTabActive(lottotickets)}'><a href="{$Link(tab)}/lottotickets" data-target="#tabs-account-lottotickets">{$Top.i18n("AccountPage__Tickets__LottoTickets")}</a></li>
        <li class='etabs__tabs__tab {$IsTabActive(raffletickets)}'><a href="{$Link(tab)}/raffletickets" data-target="#tabs-account-raffletickets">{$Top.i18n("AccountPage__Tickets__RaffleTickets")}</a></li>
    </ul>
    <div class='panel-container'>
        <div id="tabs-account-lottotickets"></div>
        <div id="tabs-account-raffletickets"></div>
    </div>
</div>
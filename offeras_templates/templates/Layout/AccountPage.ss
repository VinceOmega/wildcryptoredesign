<% require css("themes/ofertas/javascript/advanced-datatable/css/jquery.dataTables.min.css") %>
<% require css("themes/ofertas/javascript/data-tables/DT_bootstrap.css") %>

<div class="main main-padding accountPage-index etabs tab-container">
    <ul class='etabs__tabs'>
        <li class='etabs__tabs__tab {$IsTabActive(profile)}'><a href="{$Link(tab)}/profile" data-target="#tabs-account-profile">{$Top.i18n("AccountPage__Nav__Profile", 1)}</a></li>
        <li class='etabs__tabs__tab {$IsTabActive(wallet)}'><a href="{$Link(tab)}/wallet" data-target="#tabs-account-wallet">{$Top.i18n("AccountPage__Nav__Wallet")}</a></li>
        <li class='etabs__tabs__tab {$IsTabActive(games)}'><a href="{$Link(tab)}/games" data-target="#tabs-account-games">{$Top.i18n("AccountPage__Nav__Games")}</a></li>
        <li class='etabs__tabs__tab {$IsTabActive(lottotickets)}'><a href="{$Link(tab)}/lottotickets" data-target="#tabs-account-lottotickets">{$Top.i18n("AccountPage__Nav__Tickets")}</a></li>
        <%--<li class='etabs__tabs__tab {$IsTabActive(bonuses)}'><a href="{$Link(tab)}/bonuses" data-target="#tabs-account-bonuses">{$Top.i18n("AccountPage__Nav__Bonuses")}</a></li>--%>
    </ul>

    <div class='panel-container'>
        <section id="tabs-account-profile"></section>
        <section id="tabs-account-wallet"></section>
        <section id="tabs-account-games"></section>
        <section id="tabs-account-lottotickets"></section>
        <%--<section id="tabs-account-bonuses"></section>--%>
    </div>

    <% include Accordion %>
</div>
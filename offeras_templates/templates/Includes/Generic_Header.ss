<header class="header" role="banner">
    <div class="header__container header__static">
        <% if $BackButton %>
            <a class="visible-xs header__section header__section--small header__back button button--dark" href="$Link">
                <span class="glyphicon glyphicon-chevron-left header__backicon"></span>
                <span class="header__backtext">{$Top.i18n("Header__Back")}</span>
            </a>
        <% end_if %>
        <div class="header__section header__static header__section--logo">
            <div class="header__mobile"></div>
            <a href="/">
                <%-- <img class="header__logo" src="$Top.ClubModule__getLogo().URL" alt="$Top.ClubModule__getName() Logo"> --%>
                <img class="header__logo" src="$ThemeDir/img/wild-logo-inverted-300x86.png" alt="Wild Cyrpto Logo">

            </a>
        </div>
        <div class="header__section header__mobile header__hamburger visible-xs">
            <button type="button" data-target="#navbarCollapse" data-toggle="collapse" class="navbar-toggle collapsed menu visible-xs">
                <span><i class="fa fa-bars" aria-hidden="true"></i></span>
                <span class="sr-only">{$Top.i18n("Header__ToggleNavigation")}</span>
            </button>
        </div>
        <% if $hasNav %>
        <nav class="header__section header__section--fill navigation hidden-xs" role="navigation">
            <% loop $Menu(1) %>
                <% if $canAccess %>
                    <a class="navigation__item $LinkingMode --vertical" href="$Link" title="$Title.XML">
                        <span class="navigation__text">
                            $MenuTitle.XML
                        </span>
                    </a>
                <% end_if %>
            <% end_loop %>
        </nav>
        <% end_if %>
        <% if $isLoggedIn %>
            <% if $hasNav %>
            <div class="header__section header__section--shaded header__section--padded loggedstatus hidden-xs">
                <span class="loggedstatus__name">{$Account.Name}</span>
                <div class="loggedstatus__balance"><span data-api="wallet.balance">{$Top.forceDecimal($getBalance)}</span></div>
                <a class="button secondarycolour button--thin button--fixedwidth top-up" href="/top-up">{$Top.i18n("Header__TopUp")}</a>
            </div>
            <% end_if %>
        <% end_if %>
        <% if $hasSignUp %>
        <div class="header__section header__section--shaded header__section--padded hidden-xs">
            <% if $isLoggedIn %>
                <a class="button secondarycolour button--thin button--primary button--fixedwidth" href="/logout">{$Top.i18n("Header__LogOut")}</a>
                <a class="button primarycolour button--thin button--orange button--fixedwidth" href="{$AccountLink}">{$Top.i18n("Header__Account")}</a>
            <% else %>
                <a class="button secondarycolour button--thin button--primary button--fixedwidth" href="{$SignUpLink}">{$Top.i18n("Header__LogIn")}</a>
                <a class="button primarycolour button--thin button--orange button--fixedwidth" href="{$SignUpLink}">{$Top.i18n("Header__SignUp")}</a>
            <% end_if %>
        </div>
        <% end_if %>
    </div>
</header>

<div class="mobile-nav-container visible-xs">
    <nav id="navbarCollapse" class="collapse navbar-collapse">
        <div class="area-mobile">
            <% if isSignedIn %>
            <div class="balance-box" data-api="wallet.fetch">
                <span class="loggedstatus__name loggedstatus__name--mobile">{$Account.Name}</span>
                <div data-api="wallet.balance" class="loggedstatus__balance loggedstatus__balance--mobile">{$getBalance}</div>
                <a class="topup button secondarycolour" href="{$TopUpLink}">{$Top.i18n("Header__TopUp")}</a>
            </div>
            <% end_if %>
        </div>
        <ul class="nav navbar-nav text-center color-black">
            <% loop $Menu(1) %>
                <% if $canAccess %>
                    <li class="$LinkingMode">
                        <a href="$Link" title="$Title.XML">$MenuTitle.XML</a>
                    </li>
                <% end_if %>
            <% end_loop %>
            <% if isSignedIn %>
                <% if $hasMyAccount %><li><a href="{$AccountLink}" class="my-account-text">{$Top.i18n("Header__MyAccount")}</a></li><% end_if %>
                <% if $hasLogOut %><li><a class="log-text" href="logout">{$Top.i18n("Header__LogOut")}</a></li><% end_if %>
            <% else %>
                <% if hasSignUp %>
                    <li><a class="log-text" href="{$SignUpLink}">{$Top.i18n("Header__LogIn")}</a></li>
                <% end_if %>
            <% end_if %>
            <% if $isSignedIn %>
            <% else %>
                <li><a class="sign-up-text" href="/sign-up/">{$Top.i18n("Header__SignUp")}</a></li>
            <% end_if %>
        </ul>
    </nav>
</div>

<% if hasNav %>
    <nav role="navigation" class="navbar navbar-custom center">
        <div class="main main-padding">
            
            <!-- Brand and toggle get grouped for better mobile display -->
            <% if $BackButton %>
                <a class="button secondarycolour left close-query title-area back-button" href="$Link"><span class="glyphicon glyphicon-chevron-left"></span>{$Top.i18n("Navigation__Back")}</a>
            <% end_if %>
            <div class="navbar-header">
                <button type="button" data-target="#navbarCollapse" data-toggle="collapse" class="navbar-toggle">
                    <span class="sr-only">{$Top.i18n("Navigation__ToggleNavigation")}</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <% if $isSignedIn %>
                <% else %>
                    <a class="sign-up-button beta" href="/sign-up/">{$Top.i18n("Navigation__SignUp")}</a>
                <% end_if %>
            </div>
            
            <!-- Collection of nav links and other content for toggling -->
            <div id="navbarCollapse" class="collapse navbar-collapse">
                <ul class="nav navbar-nav">
                    <% loop $Menu(1) %>
                        <% if $canAccess %>
                        <li class="$LinkingMode">
                            <a href="$Link" title="$Title.XML">$MenuTitle.XML</a>
                        </li>
                        <% end_if %>
                    <% end_loop %>
                </ul>
            </div>

        </div>
    </nav>
    <% include BreadCrumbs %>
<% end_if %>
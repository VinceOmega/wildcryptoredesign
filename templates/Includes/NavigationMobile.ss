<nav role="navigation" class="navbar navbar-custom center nav-mobile navbar-fixed-top">
            
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
            </div>
            
            <!-- Collection of nav links and other content for toggling -->
            <div id="navbarCollapse" class="collapse navbar-collapse">
            	<div class="area-mobile">
                	<% if hasTopUp %>
		            	<% if $hasBalance %>
			                <div class="balance-box" data-api="wallet.fetch">
			                    <div class="balance">
			                        <span class="amount">
											<span data-api="wallet.tokens">{$getBalance}</span><span class="balance__currency"><img src="/themes/ofertas/images/token.svg" class="token" />
										</span>
			                        <span class="context">{$Top.i18n("Header__TokenBalance")}</span>
			                    </div>
			                    <div class="balance">
									<span class="amount">
										<span class="currency">€</span><span data-api="wallet.funds">{$getFunds}</span>
									</span>
			                        <span class="context">{$Top.i18n("Header__Winnings")}</span>
			                    </div>
			                    <a class="topup button secondarycolour beta" href="/top-up">{$Top.i18n("Header__BuyTokens")}</a>
			                </div>
			            <% else %>
			                <% if $isLoggedIn %>
			                    <div class="balance-box" data-api="wallet.fetch">
			                        <div class="balance">
			                            <span class="amount">
											<span data-api="wallet.tokens">{$getBalance}</span><span class="balance__currency"><img src="/themes/ofertas/images/token.svg" class="token" />
										</span>
			                            <span class="context">{$Top.i18n("Header__TokenBalance")}</span>
			                        </div>
			                        <div class="balance">
                                        <span class="amount">
											<span class="currency">€</span><span data-api="wallet.funds">{$getFunds}</span>
										</span>
			                            <span class="context">{$Top.i18n("Header__Winnings")}</span>
			                        </div>
			                        <a class="topup button secondarycolour beta" href="/top-up">{$Top.i18n("Header__BuyTokens")}</a>
			                    </div>
			                <% else %>
			                    <% if hasSignUp %>
			                        <div class="outer_signup">
			                            <a class="signup" href="{$SignUpLink}">{$Top.i18n("Header__SignUp")}</a>
			                        </div>
			                    <% end_if %>
			                <% end_if %>
		    			<% end_if %>
		        	<% end_if %>
		        </div>
                <ul class="nav navbar-nav">
                    <% loop $Menu(1) %>
                        <% if $canAccess %>
                        <li class="$LinkingMode">
                            <a href="$Link" title="$Title.XML">$MenuTitle.XML</a>
                        </li>
                        <% end_if %>
                    <% end_loop %>
                    <% if isSignedIn %>
                    	<% if $hasMyAccount %><li><a href="{$AccountLink}">{$Top.i18n("Header__MyAccount")}</a></li><% end_if %>
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
            </div>
    </nav>
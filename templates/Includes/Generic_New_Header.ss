<header id="header" class="row col-lg-12 col-md-12 col-sm-12 col-xs-12">

	<div class="div div-nav div-nav--fullwidthcontainer">
		<nav class="nav -fixed -top col-lg-12 col-md-12 col-sm-12 col-xs-12">
			<div class="div -logo col-lg-3 col-md-3 col-sm-12 col-xs-12">
				<a href="/" alt="Wild Crypto Logo"><img src="$ThemeDir/img/wild-logo-inverted-300x86.png" class="" alt="wild crypo logo" role="img" ></a>
				<div class="div -content hidden-lg hidden-md">
					<ul class="hidden-sm hidden-xs">
					  <% loop $Menu(1).limit(4) %>
		                <% if $canAccess %>
		                	<li class="list -header $LinkingMode">
		                		<a href="$Link" title="$Title.XML">$MenuTitle.XML</a>
		                	</li>
		                <% end_if %>
		              <% end_loop %>
						<% if not $isLoggedIn %>
							<li class="list -header hidden-sm hidden-xs">
								<a href="/sign-up" class="a -signup">Sign Up</a>
							</li>
						<% end_if %>
					</ul>
					<ul class="hidden-lg hidden-md">
						<li><a href="#" onclick="javascript:return false;" class="a -content--mobile -header--mobile"><i class="fa fa-bars" aria-hidden="true"></i></a>
							<ul class="ul list -header--mobile -content--mobile -remove">
								<% loop $Menu(1).limit(4) %>
					                <% if $canAccess %>
					                	<li class="list -header--mobile $LinkingMode">
					                		<a href="$Link" title="$Title.XML">$MenuTitle.XML</a>
					                	</li>
					                <% end_if %>
				              	<% end_loop %>
							</ul>
						</li>
					</ul>
				</div>
			</div>
			<div class="div -content col-lg-5 col-md-5 hidden-sm hidden-xs">
				<ul class="hidden-sm hidden-xs">
				  <% loop $Menu(1).limit(4) %>
	                <% if $canAccess %>
	                	<li class="list -header $LinkingMode">
	                		<a href="$Link" title="$Title.XML">$MenuTitle.XML</a>
	                	</li>
	                <% end_if %>
	              <% end_loop %>
				</ul>
				<ul class="hidden-lg hidden-md">
					<li><a href="#" class="a -content--mobile -header--mobile">Menu</a>
						<ul class="ul list -header--mobile -content--mobile -remove">
							<% loop $Menu(1).limit(4) %>
				                <% if $canAccess %>
				                	<li class="list -header--mobile $LinkingMode">
				                		<a href="$Link" title="$Title.XML">$MenuTitle.XML</a>
				                	</li>
				                <% end_if %>
			              	<% end_loop %>
						</ul>
					</li>
				</ul>
			</div>
			<% if not $isLoggedIn %>
				<div class="div -login col-lg-4 col-md-4 hidden-sm hidden-xs">
					<a href="/sign-up" class="a button"> {$Top.i18n("Header__LogIn")}</a>
					<a href="/sign-up" class="a button"> {$Top.i18n("Header__SignUp")}</a>
				</div>
			<% else %>
				<div class="div -login col-lg-4 col-md-4 hidden-sm hidden-xs">
					<a href="{$AccountLink}" class="a button"><i class="fa fa-users"></i> {$Top.i18n("Header__Account")}</a>
					<a href="/logout" class="a button"><i class="fa fa-sign-out"></i> {$Top.i18n("Header__LogOut")}</a>
				</div>
			<% end_if %>

		</nav>
	</div>
</header>
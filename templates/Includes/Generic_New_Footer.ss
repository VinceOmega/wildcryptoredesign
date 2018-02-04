<footer id="footer" class="footer">

    <div class="-width--px1366">

		<div class="div -top -left col-lg-4 col-md-4 col-sm-12 col-xs-12">

	        <% loop $Footer.GroupedBy(Group) %>
				<ul class="list -container">
					<li class="list -heading">
						$Group
						<ul>
							<% loop $Children %>
								<% if $CanAccess %>
									<li class="list -items"><a href="{$Link}{$Step}">$Title</a></li>
								<% end_if %>
							<% end_loop %>
						</ul>
					</li>
				</ul>
			<% end_loop %>

			<ul class="list -container">
				<li class="list -heading">{$Top.i18n("Footer__Navigation")}
					<ul>
						<% loop $FooterMenu(1) %>
							<li class="list -items"><a href="$Link">$Title</a></li>
						<% end_loop %>
					</ul>
				</li>
			</ul>

		</div>

		<div class="div -top -right -curacao col-lg-3 col-md-3 col-sm-12 col-xs-12">

			<div class="div -top -curacao--container">
				<div id="ceg-ae24bf00-5f32-489b-a752-e34a9c959a67" data-ceg-seal-id="ae24bf00-5f32-489b-a752-e34a9c959a67" data-ceg-image-size="132" data-ceg-image-type="basic-small"></div>
				<script type="text/javascript" src="https://ae24bf00-5f32-489b-a752-e34a9c959a67.curacao-egaming.com/ceg-seal.js"></script>
			</div>

		</div>

		<div class="div -top -right col-lg-4 col-md-4 col-sm-12 col-xs-12">

			<div class="div -bottom">
				<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam elementum lorem at rutrum sagittis. Nulla facilisi. Pellentesque viverra enim justo, nec dapibus tellus pretium eu. Nulla dictum risus quam. Suspendisse potenti. Morbi nec neque tempus, elementum erat nec, varius tortor. Nulla id varius leo. Etiam pellentesque arcu et ullamcorper tincidunt. Donec luctus felis sit amet velit posuere rutrum. Vestibulum nec.</p>
			</div>

		</div>

		<div class="div -bottom -fullwidth col-lg-12 col-md-12 col-sm-12 col-xs-12">

			<ul class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
				<li class="list -infocard col-lg-1 col-md-1 col-sm-6 col-xs-6"><div><i class="sprite sprite-18"></i><!-- <img src="$ThemeDir/img/IL_Over18_Logo_bw.png"> --></div></li>
				<li class="list -infocard col-lg-1 col-md-1 col-sm-6 col-xs-6"><div><i class="sprite sprite-mastercard"></i><!--- <img src="$ThemeDir/img/Mastercard_logo_bw.png"> --></div></li>
				<li class="list -infocard col-lg-1 col-md-1 col-sm-6 col-xs-6"><div><i class="sprite sprite-neteller"></i><!-- <img src="$ThemeDir/img/Neteller_logo_logotype_bw.png"> --></div></li>
				<li class="list -infocard col-lg-1 col-md-1 col-sm-6 col-xs-6"><div><i class="sprite sprite-skrill"></i><!-- <img src="$ThemeDir/img/Skrill-Moneybookers.svg_bw.png"> --></div></li>
				<li class="list -infocard col-lg-1 col-md-1 col-sm-6 col-xs-6"><div><i class="sprite sprite-visa"></i><!-- <img src="$ThemeDir/img/Visa_logo_bw.png"> --></div></li> 
			</ul>

			<div class="div -copyright col-lg-12 col-md-12 col-sm-12 col-xs-12">
				&copy; Copyright 2018. Wild Crypto Ltd
			</div>

		</div>

	</div>
	
</footer>

<aside id="jumptotop" class="aside -returntotop -remove">
	<a href="#" class="a -return"><i class="fa fa-chevron-up"></i></a>
</aside>

<aside id="actionbar" class="aside -actionbar row">
	<ul class="ul -actionbar--left col-lg-8 col-md-8 col-sm-12 col-xs-12">
		<li class="col-lg-4 col-md-4 col-sm-4 col-xs-4">
			<a href="#">
				<span class="span -actionbar--text hide">Home</span>
				<!-- <span class="glyphicons glyphicons-star"></span> -->
				<img src="$ThemeDir/img/WildCrypto-ICON.png">
			</a>
		</li>
		<li class="col-lg-4 col-md-4 col-sm-4 col-xs-4">
			<a href="#" class="a -notifcations">
				<span class="span -actionbar--text hide">Notifications</span>
				<span class="big-glyphicons big-glyphicons-group"></span>
			</a>
		</li>
		<li class="col-lg-4 col-md-4 col-sm-4 col-xs-4">
			<a href="#">
				<span class="span -actionbar--text hide">Games</span>
				<span class="big-glyphicons big-glyphicons-gamepad"></span>
			</a>
		</li>
		<li class="col-lg-4 col-md-4 col-sm-4 col-xs-4">
			<a href="#">
				<span class="span -actionbar--text hide">Balance</span>
				<span class="big-glyphicons big-glyphicons-bitcoin"></span>
			</a>
		</li>
	</ul>
	<ul class="ul -actionbar--right col-lg-4 col-md-4 hidden-sm hidden-xs">
<%-- 		<li class="col-lg-6 col-md-6 col-sm-6 col-xs-6">
			<span class="big-glyphicons big-glyphicons-chat -actionbar--text"></span>
		</li> --%>
		<li class="col-lg-6 col-md-6 col-sm-6 col-xs-6">
			<span class="span -actionbar--text -actionbar--time">12/17/2017</span>
		</li>
	</ul>
</aside>

<script>
    (function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function()
    { (i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),
            m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)
    })(window,document,'script','https://www.google-analytics.com/analytics.js','ga');

    ga('create', '$Top.ClubModule__getTrackingCode()', 'auto');
    ga('send', 'pageview');
</script>
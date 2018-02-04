<% if $Game %>
	<% if $SmallGames %>	
		<section class="section -games col-lg-12 col-md-12">
			<div class="div -container -padded-15">
				<ul>
					<% loop $SmallGames %>
					  <li class="li -list -new"><div class="div -overlay"><img src="$Splash" class="img-fluid" alt="{$name} Splash Art" ><div class="-game-title">{$name}<span class="-game-price">{$Top.forceDecimal($Price)} WILD</span></div><a <% if $uniqueKey %>href="{$Link}"<% end_if %> class="a -hide">{$Top.i18n("Homepage__PlayTry")}</a></div></li>
					<% end_loop %>  
				</ul>
			</div>
		</section>
	<% end_if %>
<% end_if %>
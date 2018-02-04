<% if $getSliderByName('Main') %>
	<section class="jumbotron col-lg-12 col-md-12 hidden-sm hidden-xs">
		<div id="carousel" class="carousel slide" data-ride="carousel">
			<!--- Indicators --->
			<ol class="carousel-indicators">
				<% loop $getSliderByName('Main') %>
					<% if $Me %>
						<% loop $Me %>
							<% if $Me.Slides %>
								<% loop $Me.Slides %>
			  						<li data-target="#carousel" data-slide-to="{$Pos}" <% if Pos == 1 %> class="active" <% end_if %> ></li>
			  					<% end_loop %>
			  				<% end_if %>
			  			<% end_loop %>
					<% end_if %>
				<% end_loop %>
			</ol>
		  	<!--- Slider Wrapper --->
			<div class="carousel-inner" role="listbox">
				<% loop $getSliderByName('Main') %>
					<% if $Me %>
						<% loop $Me %>
							<% if $Me.Slides %>
								<% control $Me.Slides %>
								    <div class="carousel-item item <% if Pos == 1 %>active<% end_if %>">
										<%-- <img src="{$UploadImage.url}" class="img-fluid" alt="{$Name}" alt="slide img number one"> --%>
										<div style="background-image: url('{$UploadImage.url}')" class="div div-carousel div-carousel--image" alt="{$Name}" alt="slide img number one"></div>
										<div class="carousel-caption d-none d-md-block hidden-sm hidden-xs">
										  	<h3>{$Name}</h3>
										  	<p>{$Caption}</p>
										  	<a href="{$CallToActionURL}" class="a -slider button -cta hidden-sm hidden-xs">{$CallToAction}</a>
										</div>
								    </div>
			  					<% end_control %>
			  				<% end_if %>
			  			<% end_loop %>
					<% end_if %>
				<% end_loop %>
			</div>
		</div>
	</section>
<% end_if %>
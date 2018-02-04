<section class="quicklinks col-lg-12 col-md-12 hidden-sm hidden-xs">
	<div class="-width--px1366">
		<ul>
		  <% loop $Menu(1).limit(4) %>
	        <% if $canAccess %>
	        	<li class="list -quicklinks $LinkingMode">
	        		<a href="$Link" title="$Title.XML">$MenuTitle.XML</a>
	        	</li>
	        <% end_if %>
	      <% end_loop %>
		</ul>
	</div>
</section>
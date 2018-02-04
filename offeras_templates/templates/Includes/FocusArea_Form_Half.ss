<h1 class="heading">$Title</h1>
<div class="clearfix"></div>
<% if $SubTitle %>
	<div class="col-xs-12 no-padding subTitle-padding"><p>$SubTitle</p></div>
<% end_if %>
<% if $Form %>
    <div class="form-holder <% if $leftColumn %>$leftColumn<% else %>col-sm-6<% end_if %> col-xs-12">
    $Form
    <div class="clearfix"></div>
</div>
<% if $Text %>
<div class="<% if $rightColumn %>$rightColumn<% else %>col-sm-6<% end_if %> col-xs-12 caption desktop hidden-xs right">
    $Text
    <div class="clearfix"></div>
</div>
<% end_if %>
<% end_if %>
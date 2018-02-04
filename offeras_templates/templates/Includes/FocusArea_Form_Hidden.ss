<h1 class="heading">$Title</h1>
<% if $SubTitle %>
	<div class="clearfix"></div>
	<div class="col-xs-12 col-sm-7 no-padding subTitle-padding"><p>$SubTitle</p></div>
<% end_if %>
<% if $Form %>
	<div class="col-xs-12 col-sm-5 no-padding right">
	    <a class="button secondarycolour right title-area js toggle form-button xi toggle-form <% if SubTitle %>subtitle-button<% end_if %>" data-toggle=".form-holder">
	    	<div class="toggle-form-open <% if $Form.Errored %>hidden<% else %><% end_if %>"><span class="glyphicon glyphicon-plus-sign icon left"></span>$ButtonText</div>
	    	<div class="toggle-form-close <% if $Form.Errored %><% else %>hidden<% end_if %>"><span class="glyphicon glyphicon-minus-sign icon left"></span>$ButtonText</div>
	    </a>
	</div>
	<div class="form-holder <% if $Form.Errored%><% else %>collapsed<% end_if %> col-xs-12 <% if $Form.half %><% if $leftColumn %>$leftColumn<% else %>col-sm-6<% end_if %><% end_if %> no-padding">
        $Form
        <div class="clearfix"></div>
    </div>
<% end_if %>
<% if $Form.Half %>
    <div class="<% if $rightColumn %>$rightColumn<% else %>col-sm-6<% end_if %> col-xs-12 caption desktop">
		$Text
        <div class="clearfix"></div>
    </div>
<% end_if %>
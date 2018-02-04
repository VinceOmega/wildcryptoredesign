<% if $GameSell %>
	<% if $ClassName != "DrawPage"  && $ClassName != "ResultsPage" %>
    	<div class="pageheader primarycolour">{$Top.i18n("Game__TryMessage")}</div>
    <% end_if %>
	<% include NewGamesContainer %>
<% end_if %>
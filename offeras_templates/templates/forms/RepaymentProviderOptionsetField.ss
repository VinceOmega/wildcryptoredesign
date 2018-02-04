<div $AttributesHTML>
    <h3>$Title</h3>
	<img src="themes/ofertas/images/asterisk.png" style="display: inline-block; margin-left:5px; width: 8px; opacity:1;"/>
	<% loop $Options %>
		<div class="$Class">
			<input id="$ID" class="radio" name="$Name" type="radio" value="$Value.ATT"<% if $isDisabled %> disabled<% end_if %> <% if $Up.Required %>required<% end_if %> />

			<label for="$ID">
                <img class="repaymentform__repaymentselector--providerimage" src="/themes/ofertas/images/repayment/{$Value.ATT}.png">
			</label>
		</div>
	<% end_loop %>
	<% include Generic_Form_Error %>
</div>

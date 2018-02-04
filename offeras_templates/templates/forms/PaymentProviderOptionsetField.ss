<div $AttributesHTML>
    <h3>$Title</h3>
	<img src="themes/ofertas/images/asterisk.png" style="display: inline-block; margin-left:5px; width: 8px; opacity:1;"/>
	<div>
		<% loop $Options %>
			<div class="topupform__paymentselector--option">
				<input id="$ID" class="radio" name="$Name" type="radio" value="$Value.ATT"<% if $isDisabled %> disabled<% end_if %> <% if $Up.Required %>required<% end_if %> />

				<label for="$ID">
					<img class="topupform__paymentselector--providerimage" src="/themes/ofertas/images/payment/{$Value.ATT}.png">
				</label>
			</div>
		<% end_loop %>
    </div>
	<div id="2-0_explanation" class="topupform__paymentselector--explanation">
        Click here to open a Skrill account if you haven't got one <a href="http://www.skrill.com" class="white-link" target="_blank">www.skrill.com</a>
		<br/><br/>
		You should use the same name and address that you used when creating an account with AfroMillionsLotto to register with Skrill.
	</div>
	<div id="2-1_explanation" class="topupform__paymentselector--explanation">
        Click here to open a Neteller account if you haven't got one <a href="http://www.neteller.com" class="white-link" target="_blank">www.neteller.com</a>
		<br/><br/>
		You should use the same name and address that you used when creating an account with AfroMillionsLotto to register with Neteller.
	</div>
    <div id="2-2_explanation" class="topupform__paymentselector--explanation">
		The cardholder's name and address should be the same that you used when creating an account with AfroMillionsLotto.
        <br/><br/>
        This transaction will show on your statement as "Ofertas365 +44 207 193 2623"
        <div class="topupform__paymentselector--cards">
			<div class="topupform__paymentselector--iconbox">
				<img class="topupform__paymentselector--icon" src="/themes/ofertas/images/payment/visa.png" alt="Visa"/>
			</div>
			<div class="topupform__paymentselector--iconbox">
				<img class="topupform__paymentselector--icon" src="/themes/ofertas/images/payment/mastercard.png" alt="Mastercard"/>
			</div>
            <div class="topupform__paymentselector--iconbox">
                <img class="topupform__paymentselector--icon" src="/themes/ofertas/images/payment/maestro.png" alt="Maestro"/>
            </div>
        </div>
    </div>
	<% include Generic_Form_Error %>
</div>

<form $FormAttributes class="form" role="form">
    <div>
        <% include Generic_Form_Error %>
    </div>

	<fieldset>
        <% loop $Fields %>
            <div>
                <% if $isHidden %><% else %>
                    <p class="form__fieldtitle form__fieldtitle--large form__fieldtitle--margin">{$Title}</p>
                <% end_if %>
                $Field
                <% include Generic_Form_Error %>
            </div>
        <% end_loop %>
        <% if $Actions %>
            <div class="containerwrap">
                <% loop $Actions %>
                    <div class="containerwrap__item--gap">$Field</div>
                <% end_loop %>
            </div>
        <% end_if %>
	</fieldset>
</form>
<% if $CrossSell %>
<div class="containerwrap containerwrap--responsive crosssells">
    <% loop $CrossSell %>
        <a class="containerwrap__fillhalf containerwrap crosssells__item" href="{$Link}">
            <img class="fill" src="{$Source}" alt="Crossell Image"/>
        </a>
    <% end_loop %>
</div>
<% end_if %>
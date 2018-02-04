<% if $PlaysAvailable %>
    <% loop $PlaysAvailable %>
        <div class="gametoplay">
            <a class="gametoplay__description" href="$game.DetailsURL">
                <% if $game.Badge %>
                    <img class="gametoplay__image" src="$game.Badge" alt="{$game.name} Badge" style="width:30px; vertical-align:middle" />
                <% end_if %>

                <p class="gametoplay__text">
                <% if $free %>
                    <span>You have $count free $game.name <% if $count > 1 %>plays<% else %>play<% end_if %> available...</span>
                <% else %>
                    <span>You have $count unfinished $game.name <% if $count > 1 %>plays<% else %>play<% end_if %> available...</span>
                <% end_if %>
                </p>
            </a>
            <%--<a class="button inline thinner right beta play-all" href="#">Auto Play All</a>--%>
            <a class="button secondarycolour button--thin" href="$game.PlayUrl">Play</a>
        </div>
    <% end_loop %>
<% end_if %>
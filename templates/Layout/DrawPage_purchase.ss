<div class="main main-padding row">
    <% with $Draw %>
        <div class="col-xs-12 content raffle-information">
            <h1>$name <% if $drawNumber %><div class="draw-number">Draw $drawNumber on $closingTime.Long</div><% end_if %></h1>

            <div class="description">
                $description
            </div>
        </div>
    <% end_with %>
    <%-- <div class="col-xs-12 col-sm-4 more-area">
        <div class="outer-title">
            <div class="title">More</div>
        </div>
        <% include CrossSells %>
    </div> --%>

    <% include InstantWinGames %>
    <% include Accordion %>

    <div class="clearfix"></div>
</div>
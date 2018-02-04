<% if $OpenDraws(1) %><% loop $OpenDraws(1) %>
<div class="focusarea focusareacolour raffle $Class<% if $customClasses %> $customClasses<% end_if %>" style="background-image: url({$Banner});">
    <% if $customStyle %>
        <style type="text/css">
                $customStyle
        </style>
    <% end_if %>

    <div class="outer">
        <div class="inner">
            <% if False %>
                <div class="left-arrow"></div>
            <% end_if %>
            <div class="raffle card col-sm-12">
                <div class="col-xs-11 col-sm-12 col-sm-offset-1 context">
                    <h1 class="heading">$name</h1>
                    <h1 class="heading heading-mobile">$name</h1>
                    <h2>$Details.blurb</h2>

                    <div class="row">
                        <div class="blurb col-sm-5">
                            <p>$Details.summary</p>
                        </div>
                        <div class="clearfix"></div>
                        <div class="col-sm-5 blurb">
                            Just WILD{$Top.forceDecimal($Price)} for your chance to win!
                        </div>
                        <div class="clearfix"></div>
                        <div class="col-sm-5">
                            <a class="button secondarycolour xi" href="{$Link(purchase)}">{$Top.i18n("Game__BuyTickets")}</a>
                        </div>
                    </div>
                </div>
            </div>
            <% if False %>
                <div class="col-sm-12">
                    <div class="carousel-controls">
                        <div class="control active">

                        </div>
                        <div class="control">

                        </div>
                        <div class="control">

                        </div>
                    </div>
                </div>
            <% end_if %>
            <div class="clearfix"></div>
            <% if False %>
                <div class="right-arrow"></div>
            <% end_if %>
            <div class="clearfix"></div>
        </div>
    </div>
</div>
<% end_loop %><% end_if %>
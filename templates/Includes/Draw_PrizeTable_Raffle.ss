<div class="notification shadowcolour -width--px1366">
    <div class="notification__text notification__fill">
        You pay in Naira. We convert to Euros (€). Your winnings paid in Naira.
    </div>
    <a class="button primarycolour button--thin focusareabannerbutton" href="http://www.xe.com/currencyconverter/convert/?Amount=1&From=EUR&To=NGN" target="_blank">Euro to Naira</a>
</div>

<% if $Draw %><% with $Draw %>
    <div class="accordion-wrapper col-xs-12 description prize-table">
        <div class="panel panel-default panel-edit">
            <div class="panel-heading">
                <h4 class="panel-title">
                    <a data-toggle="collapse" data-parent="#accordion" href="{$Top.Link}#collapsePrize">
                        <span class="glyphicon glyphicon-plus-sign icon"></span>
                        <span>{$Top.i18n("Draw__Raffle__PrizeTable")}</span>
                    </a>
                </h4>
            </div>
            <div id="collapsePrize" class="panel-collapse collapse in panel-content">
                <div class="panel-body no-padding">
                    <div class="col-sm-12 no-padding box results">
                        <div class="inner">
                            <div class="tablebox">
                                <div class="tablebox__header">
                                    <div class="tablebox__cell">{$Top.i18n("Draw__Raffle__Table__Tier")}</div>
                                    <div class="tablebox__cell">{$Top.i18n("Draw__Raffle__Table__Prize")}</div>
                                    <div class="tablebox__cell">{$Top.i18n("Draw__Raffle__Table__WinningNumbers")}</div>
                                </div>
                                <% loop $Prizes %>
                                    <div class="tablebox__row">
                                        <div class="tablebox__cell">$Position(1)</div>
                                        <div class="tablebox__cell">$narrative</div>
                                        <div class="tablebox__cell"><% loop $WinningNumbers %>$Value <br /><% end_loop %></div>
                                    </div>
                                <% end_loop %>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
<% end_with %><% end_if %>
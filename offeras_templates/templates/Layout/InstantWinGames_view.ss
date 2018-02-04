<% if $InstantWinGame.PlaysAvailable > 0 %>
    <div class="notification shadowcolour">
        <div class="notification__text notification__fill">
            You have $InstantWinGame.PlaysAvailable <% if $InstantWinGame.PlaysAvailable > 1 %>plays<% else %>play<% end_if %> available
        </div>

        <% if $notifyButton %>
            <a class="button secondarycolour button--thin" href="$InstantWinGame.PlayUrl">{$Top.i18n("Homepage__ContinuePlay")}</a>
        <% end_if %>
    </div>
<% end_if %>
<% with $InstantWinGame %>
    <% if $Details.blurb %><h2>$Details.blurb.raw</h2><% end_if %>
    <div class="cmsinput cmsinput--faint cmsinput--links">$Details.description.raw</div>
    <% if $InstantWinPrizes %>
        <div class="accordion-wrapper">
            <div class="panel panel-default panel-edit">
                <div class="panel-heading">
                    <h4 class="panel-title">
                        <a data-toggle="collapse" data-parent="#accordion" href="{$Top.Link}#collapsePrize">
                            <span class="glyphicon glyphicon-plus-sign icon"></span>
                            <span>{$Top.i18n("Game__PrizeTable")}</span>
                        </a>
                    </h4>
                </div>
                <div id="collapsePrize" class="panel-collapse collapse panel-content">
                    <div class="panel-body no-padding">
                        <div class="col-sm-12 no-padding box results">
                            <div class="inner">
                                <div class="tablebox">
                                    <div class="tablebox__header">
                                        <div class="tablebox__cell">{$Top.i18n("Game__Table__Prize")}</div>
                                        <div class="tablebox__cell">{$Top.i18n("Game__Table__Odds")}</div>
                                    </div>
                                    <% loop $InstantWinPrizes %>
                                        <div class="tablebox__row">
                                            <div class="tablebox__cell">$Prize</div>
                                            <div class="tablebox__cell">$Odds</div>
                                        </div>
                                    <% end_loop %>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    <% end_if %>

    <div class="containerwrap containerwrap--center containerwrap--justifycenter containerwrap--expand">
    <% if $PlaysAvailable > 0 %>
        <a class="containerwrap__item containerwrap__item--gap button secondarycolour button--secondary" href="{$Link(buy)}">{$Top.i18n("Homepage__ContinuePlay")}</a>
    <% else %>
        <a class="containerwrap__item containerwrap__item--gap button secondarycolour button--secondary button--play" href="{$Link(trial)}">{$Top.i18n("Homepage__TryGame")}</a>
        <a class="containerwrap__item containerwrap__item--gap button secondarycolour button--secondary button--play" href="{$Link(buy)}">{$Top.i18n("Homepage__PlayGame")}</a>
    <% end_if %>
    </div>
<% end_with %>
<% include Accordion %>
<div class="pageheader primarycolour">About $ClubModule__getName</div>
<% include AboutKHF %>
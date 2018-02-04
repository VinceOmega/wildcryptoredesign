<% require css("themes/ofertas/javascript/advanced-datatable/css/jquery.dataTables.min.css") %>
<% require css("themes/ofertas/javascript/data-tables/DT_bootstrap.css") %>
<% require javascript("themes/ofertas/javascript/tabs.js") %>
<div class="main main-padding syndicate">ofertas
    <div class="col-xs-12 prize-share">
        <div class="panel">
            <div class="panel-body thin-panel">
                <h2>{$Top.i18n("Draw__Syndicate__PrizeShare")}</h2>
                <div class="row">
                    <div class="col-xs-12 col-sm-4">
                        <h3>{$Top.i18n("Draw__Syndicate__CurrentStake")}</h3>
                        <div class="col-xs-12 box">w {$Syndicate.minimumBuyIn}</div>
                    </div>
                    <div class="col-xs-12 col-sm-4">
                        <h3>{$Top.i18n("Draw__Syndicate__PercentShare")}</h3>
                        <div class="col-xs-12 box">{$PercentageShare}%</div>
                    </div>
                    <div class="col-xs-12 col-sm-4">
                        <h3>{$Top.i18n("Draw__Syndicate__PossiblePrizeShare")}</h3>
                        <div class="col-xs-12 box">{$PrizeShare.Nice}</div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-sm-12">
                        <h2>{$Top.i18n("Draw__Syndicate__SyndicateStatus")}</h2>
                    </div>
                    <div class="col-sm-12 valid-for-padding">
                        $ValidFor
                    </div>
                    <div class="col-sm-3">
                        <div class="col-xs-12 box">
                            {$TotalInvestment}<span class="token">t</span> <span>{$Top.i18n("Draw__Syndicate__TotalInvestment")}</span>
                        </div>
                    </div>
                    <div class="col-sm-3">
                        <div class="col-xs-12 box">
                            $SyndicateTickets.count <span>{$Top.i18n("Draw__Syndicate__NumberOfTickets")}</span>
                        </div>
                    </div>
                    <div class="col-sm-3">
                        <div class="col-xs-12 box">
                            w 0 <span>{$Top.i18n("Draw__Syndicate__WinningsToDate")}</span>
                        </div>
                    </div>
                    <div class="col-sm-3">
                        <!-- Small prize re-investment -->
                    </div>
                </div>
                <div class="row">
                    <div class="col-sm-6">
                        <div class="row">
                            <div class="col-sm-6">
                                <div class="col-xs-12 not-box title-form-left">
                                    {$Top.i18n("Draw__Syndicate__TotalUnspentBalance")}
                                </div>
                            </div>
                            <div class="col-sm-6">
                                <div class="box col-xs-12">
                                    {$Syndicate.Wallet.Funds.Int}<span class="token">t</span>
                                </div>
                            </div>
                            <div class="clearfix"></div>
                            <div class="col-sm-6">
                                <div class="col-xs-12 not-box title-form-left">
                                    {$Top.i18n("Draw__Syndicate__TicketEquivalent")}
                                </div>
                            </div>
                            <div class="col-sm-6">
                                <div class="box col-xs-12">
                                    {$BalanceTicketEquivalent}
                                </div>
                            </div>
                            <% if $IsDrawType(Raffle) %>
                            <% if $IsLeader %>
                            <% if $Draw.CanBuy %>
                            <div class="col-sm-6">
                                <div class="col-xs-12 not-box text-right">
                                    {$Top.i18n("Draw__Syndicate__BuySyndicateTickets")}
                                </div>
                            </div>
                            <div class="col-sm-6 center">
                                $SyndicateTicketForm
                            </div>
                            <% else %>
                                <div class="col-sm-12 col-xs-12 text-center">
                                    {$Top.i18n("Draw__Syndicate__DrawIsNowClosed")}
                                </div>
                            <% end_if %>
                            <% end_if %>
                            <% end_if %>
                        </div>
                    </div>
                    <div class="col-sm-6 content">
                        <div class="col-xs-12 box syndicate-tips">
                            <h3>{$Top.i18n("Draw__Syndicate__SyndicateTips")}</h3>
                            <p>...</p>
                        </div>
                    </div>
                    <% if $IsDrawType(Lotto) %>
                    <% if $IsLeader %>
                        <% if $Draw.CanBuy %>
                        <div class="subbox col-xs-12">
                            <div class="focus-panel picker lotto --has-bottom col-xs-12">
                                $LottoPickerForm
                            </div>
                        </div>
                        <% end_if %>
                    <% end_if %>
                    <% end_if %>
                </div>
            </div>
        </div>
    </div>
    <div class="clearfix"></div>

    <ul id="tabs">
        <li><a href="#draws" class="draw-tab">{$Top.i18n("Draw__Syndicate__Draws")}</a></li>
        <li><a href="#tickets" data-ticketLink="{$Syndicate.Link(mySyndicateTicketsAll)}" class="wallet-tab">{$Top.i18n("Draw__Syndicate__Tickets")}</a></li>
        <li><a href="#members" class="members-tab">Members <div class="badge">$Members.count</div></a></li>
        <% if $IsLeader %><li><a href="#wallet" class="wallet-tab">{$Top.i18n("Draw__Syndicate__Wallet")}</a></li><% end_if %>
        <% if $IsLeader %><li><a href="#admin" class="admin-tab">{$Top.i18n("Draw__Syndicate__Admin")}</a></li><% end_if %>
    </ul>

    <div class="tabContent" id="draws">
        <div class="inner">
            <div class="dropdown">
              <button class="btn pick-a-draw button secondarycolour beta dropdown-toggle" type="button" id="dropdownMenu1" data-toggle="dropdown" aria-haspopup="true" aria-expanded="true">
                  {$Top.i18n("Draw__Syndicate__PickADraw")}
                <span class="caret"></span>
              </button>
              <ul class="dropdown-menu" aria-labelledby="dropdownMenu1">
                <% loop $LoopDraws %>
                <%-- Will pull through a list of the draws assosiated with the syndicate, OPEN and CLOSED draws only. --%>
                    <li>
                        <a class="pointer" data-drawLink="{$Top.Syndicate.Link(mySyndicateTicketsAllDraws)}?drawId={$drawId}">$name (draw #{$drawNumber})</a>
                    </li>
                <% end_loop %>
              </ul>
            </div>
            <div class="content spacer"></div>
            <div class="clearfix"></div>
        </div>
    </div>

    <div class="tabContent hidden" id="tickets"> 
        <div class="inner">
            <div class="content"></div>
            <div class="clearfix"></div>
        </div>
    </div>     

    <div class="tabContent hidden" id="members">
        <div class="inner">
            <% if $Members %><% loop $Members %>
                <div class="row members-padding">
                    <div class="col-xs-12">
                        <div class="col-xs-12 box member">
                            <span class="inherit right">Stake w {$Top.Syndicate.minimumBuyIn}</span>
                            $firstName $lastName <% if $Top.Syndicate.leaderId = $id %>(Leader)<% end_if %>
                        </div>
                    </div>
                </div>
            <% end_loop %><% end_if %>
            <% if $IsLeader %>
            <div class="row">
                <div class="col-xs-12">
                    Add a member
                </div>
            </div>
            <div class="row">
                $InviteSyndicateMemberForm
            </div>
            <% end_if %>
        </div>
    </div>

    <% if $IsLeader %>
    
    <div class="tabContent hidden" id="wallet">
        <div class="inner">
            <div class="subbox syndicate-wallet">
                <table class="data-table responsive" data-parameters="walletPoolName=tokenPool&limit=10">
                    <thead>
                        <tr>
                            <th>{$Top.i18n("Draw__Syndicate__Table__Date")}</th>
                            <th>{$Top.i18n("Draw__Syndicate__Table__Amount")}</th>
                            <th>{$Top.i18n("Draw__Syndicate__Table__Balance")}</th>
                            <th>{$Top.i18n("Draw__Syndicate__Table__Code")}</th>
                            <th>{$Top.i18n("Draw__Syndicate__Table__Narrative")}</th>
                        </tr>
                    </thead>
                        <% loop $SyndicateWalletMovements %>
                            <tr>
                                <td>$updated</td>
                                <td>w $amount</td>
                                <td>w $newBalance</td>
                                <td>$transactionCode</td>
                                <td>$narrative</td>
                            </tr>
                        <% end_loop %>
                    <tbody>
                    </tbody>
                </table>
            </div>
            <div class="clearfix"></div>
        </div>
    </div>

    <div class="tabContent hidden" id="admin">
        <div class="inner">
            <div class="subbox syndicate-wallet">

            </div>
            <div class="clearfix"></div>
        </div>
    </div>
    
    
    <% end_if %>
    
    <% include Accordion %>
</div>
<% include Widget_GamesToPlay %>

<!--
    <section class="section col-lg-12 col-ms-12 col-sm-12 col-xs-12">
        <div class="notification shadowcolour">
            <div class="notification__text notification__fill">
                You pay in Naira to play Instant Win Games. We convert to Euros (€). Your winnings paid in Naira.
            </div>


            <a class="button primarycolour button--thin focusareabannerbutton" href="http://www.xe.com/currencyconverter/convert/?Amount=1&From=EUR&To=NGN" target="_blank">Euro to Naira</a>

        </div>
    </section>
-->

<!--
    <div class="containerwrap containerwrap--mediumexpand">
        <%-- if $AllGames --%>
            <%-- loop $AllGames --%>
                <a class="iwgbox iwgbox--bigger"<% if $uniqueKey %> href="{$Link}"<% end_if %>>
                    <div class="iwgbox__splashboxholder">
                        <div class="iwgbox__splashbox">
                            <img class="iwgbox__splash" src="$Splash" alt="{$name} Splash Art" />
                        </div>
                    </div>
                    <div class="iwgbox__caption">
                        <div class="iwgbox__description cmsinput--ignore">
                            <% if $Details.blurb %>
                                $Details.blurb.raw
                            <% end_if %>
                        </div>

                        <% if enabled %>
                            <div class="iwgbox__price">€{$Top.forceDecimal($Price)}</div>
                            <div class="button secondarycolour button--thin">{$Top.i18n("Homepage__PlayTry")}</div>
                        <% end_if %>
                    </div>
                </a>
            <%-- end_loop --%>
        <%-- end_if --%>
    </div>
-->
<% if $Game %>
    <% if $AllGames %>    
        <section class="section -games col-lg-12 col-md-12 col-sm-12 col-xs-12">
            
            <div class="div -width--px1366">
                <h3 class="h3-level3 -raspberry">OUR GAMES</h3>
            </div>

            <div class="div -container -padded-15">
                <ul>
                    <% loop $AllGames %>
                      <li class="li -list -new"><div class="div -overlay"><img src="$Splash" class="img-fluid" alt="{$name} Splash Art" ><div class="-game-title">{$name}<span class="-game-price">{$Top.forceDecimal($Price)} WILD</span></div><a <% if $uniqueKey %>href="{$Link}"<% end_if %> class="a -hide">{$Top.i18n("Homepage__PlayTry")}</a></div></li>
                    <% end_loop %>  
                </ul>
            </div>
        </section>
    <% end_if %>
<% end_if %>
<% include Accordion %>

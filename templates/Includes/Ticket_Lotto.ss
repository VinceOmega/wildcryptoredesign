<div class="account">
    <div class="account__section">
        <div class="account__headerbox containerwrap">
            <h5 class="account__header">
                Ticket Bought: $Created.Format(d F Y)
            </h5>
            <h5 class="account__header">$ValidFor</h5>
        </div>

        <div class="account__content">
            <table class="table ticket-lotto">
                <thead>
                <tr>
                    <th class="containerwrap">
                        <p>{$Top.i18n("Draw__Lotto__YourLinesMessage")}</p>
                        w {$Top.forceDecimal($Cost)}
                    </th>
                    <%--<% if $Top.Draw.status == "DRAWN" %>--%>
                        <%--<th>{$Top.i18n("Draw__Lotto__WinningCombo")}</th>--%>
                        <%--<th>{$Top.i18n("Draw__Lotto__Winnings")}</th>--%>
                    <%--<% end_if %>--%>
                </tr>
                </thead>
                <tbody>
                    <% if $Lines %>
                        <% loop $Lines %>
                        <tr>
                            <td class="table-width-20">
                                <div class="resultcard__ballcontainer containerwrap containerwrap--nowrap containerwrap--xswrap">
                                    <% loop $Numbers %>
                                        <% if $Top.isNumberBonus($Number) %><% else %>
                                            <div class="resultcard__ballbox">
                                                <img src="/themes/ofertas/images/red_ball.png"
                                                     class="resultcard__ball resultcard__ball--nomatch"/>
                                                <span class="resultcard__ballnumber">{$Top.forceDecimal($Number, "%d")}</span>
                                            </div>
                                        <% end_if %>
                                    <% end_loop %>
                                    <% loop $Numbers %>
                                        <% if $Top.isNumberBonus($Number) %>
                                            <div class="resultcard__ballbox">
                                                <img src="/themes/ofertas/images/gold_ball.png"
                                                     class="resultcard__ball resultcard__ball--nomatch"/>
                                                <span class="resultcard__ballnumber">{$Top.forceDecimal($Number, "%d")}</span>
                                            </div>
                                        <% end_if %>
                                    <% end_loop %>
                                </div>
                            </td>
                            <%--<% if $Top.Draw.status == "DRAWN" %>--%>
                                <%--<td class="td-width-20" valign="middle">--%>
                                    <%--$WinningCombo--%>
                                <%--<td class="td-width-20" valign="middle">--%>
                                    <%--<% if $Winnings %>--%>
                                        <%--<% loop $Winnings %>--%>
                                            <%--{$Value}--%>
                                        <%--<% end_loop %>--%>
                                    <%--<% else %>--%>
                                        <%--No Win--%>
                                    <%--<% end_if %>--%>
                                <%--</td>--%>
                            <%--<% end_if %>--%>
                        </tr>
                        <% end_loop %>
                    <% end_if %>
                </tbody>
            </table>
        </div>
    </div>
</div>
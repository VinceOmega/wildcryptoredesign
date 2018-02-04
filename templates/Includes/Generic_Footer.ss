<footer class="footer footercolour">
    <div class="footer__topbox footercolour">
        <div class="footer__container">
            <div class="containerwrap footer__wrapper">
                <div class="footer__section">
                    <p class="footer__header">{$Top.i18n("Footer__Navigation")}</p>
                    <ul class="list-unstyled list-style">
                        <% loop $FooterMenu(1) %>
                            <li class="footer__listitem"><a href="$Link">$Title</a></li>
                        <% end_loop %>
                    </ul>
                </div>

                <% loop $Footer.GroupedBy(Group) %>
                    <div class="footer__section">
                        <p class="footer__header">$Group</p>
                        <ul class="list-unstyled list-style">
                            <% loop $Children %>
                                <% if $CanAccess %><li class="footer__listitem"><a href="{$Link}{$Step}">$Title</a></li><% end_if %>
                            <% end_loop %>
                        </ul>
                    </div>
                <% end_loop %>

                <div class="footer__section">
                    <div class="footer__allrights">
                        <div class="containerwrap containerwrap--expand" style="padding-bottom: 5px;">
                            <a class="containerwrap__item--gap" href="$Top.getSubdomainUrl('home', '/')">
                                <img class="header_logo" src="$ThemeDir/images/logo.png" alt="AfroMillionsLotto" style="width: 125px;"/>
                            </a>

                            <div class="containerwrap__item--gap">
                                <div id="ceg-seal-container" data-ceg-seal-id="dc5de6b6b945952b404d" data-ceg-image-size="103" data-ceg-image-type="basic-small" style="width:103px;"></div>
                                <script type="text/javascript" src="https://dc5de6b6b945952b404d.curacao-egaming.com/ceg-seal.js"></script>
                            </div>
                        </div>
                        <p class="footer__allrights-text">{$Top.i18n("Footer__RightsMessage")}</p>
                        <p class="footer__allrights-text">{$Top.i18n("Footer__LicenseNumber")}</p>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <div class="footer__container footer__container--slim containerwrap containerwrap--center">
        <div class="footer__icontextbox">
            <div class="footer__iconbox footer__iconbox--small">
                <img class="footer__icon" src="/themes/ofertas/images/twelve40/IL_Over18_Logo.png" alt="Over 18 Logo">
            </div>
            <span class="footer__icontext">{$Top.i18n("Footer__Over18Message")}</span>
        </div>

        <div class="footer__iconbox ">
            <img class="footer__icon" src="/themes/ofertas/images/twelve40/Visa_logo.png" alt="Visa Logo"/>
        </div>

        <div class="footer__iconbox ">
            <img class="footer__icon" src="/themes/ofertas/images/twelve40/Mastercard_logo.png" alt="Mastercard Logo"/>
        </div>

        <div class="footer__iconbox ">
            <img class="footer__icon" src="/themes/ofertas/images/ofertas/Neteller_logo_logotype.png" alt="Neteller Logo"/>
        </div>

        <div class="footer__iconbox ">
            <img class="footer__icon" src="/themes/ofertas/images/ofertas/Skrill-Moneybookers.svg.png" alt="Skrill Logo"/>
        </div>

        <%--<div class="footer__iconbox ">--%>
            <%--<img class="footer__icon" src="/themes/ofertas/images/ofertas/paga.png" alt="Paga Logo"/>--%>
        <%--</div>--%>

        <%--<div class="footer__iconbox">--%>
            <%--<img class="footer__icon" src="/themes/ofertas/images/ofertas/Tola_Wallet_FC.png" alt="Tola Mobile Logo"/>--%>
        <%--</div>--%>
    </div>

    <div class="main-padding bottom-bar text align">
        <div class="inner">
            <div class="col-xs-12 jgcText">
                <span class="copyright-symbol">©</span><span>{$Top.i18n("Footer__RegisteredAddressMessage")}</span>
            </div>
        </div>
        <div class="clearfix"></div>
    </div>

    <script>
        (function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function()
        { (i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),
                m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)
        })(window,document,'script','https://www.google-analytics.com/analytics.js','ga');

        ga('create', '$Top.ClubModule__getTrackingCode()', 'auto');
        ga('send', 'pageview');
    </script>
</footer>
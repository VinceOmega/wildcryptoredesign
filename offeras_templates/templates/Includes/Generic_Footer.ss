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
                                <img class="header_logo" src="$ThemeDir/img/wild-logo-inverted-300x86.png" alt="WildCrypto" style="width: 125px;"/>
                            </a>

                            <div class="containerwrap__item--gap">
                                <div id="ceg-ae24bf00-5f32-489b-a752-e34a9c959a67" data-ceg-seal-id="ae24bf00-5f32-489b-a752-e34a9c959a67" data-ceg-image-size="80" data-ceg-image-type="basic-small"></div>
<script type="text/javascript" src="https://ae24bf00-5f32-489b-a752-e34a9c959a67.curacao-egaming.com/ceg-seal.js"></script>
                            </div>
                        </div>
                        <p class="footer__allrights-text">Wild Crypto B.V. is a privately owned and operated company headquartered in Kaya Richard J. Beacon Z/N, Willemstad, Curaçao. This Service operates under the License No. 1668/JAZ issued to Curacao Egaming, authorized and regulated by the Government of Curacao. <br> <br> 10% of gross revenue is donated to charities</p>
                        <%-- <p class="footer__allrights-text">{$Top.i18n("Footer__LicenseNumber")}</p> --%>
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
            <img class="footer__icon" src="/themes/ofertas/img/shapeshift.png" alt="Shapeshift Logo"/>
        </div>

        <div class="footer__iconbox ">
            <img class="footer__icon" src="/themes/ofertas/img/bitcoin.png" alt="Bitcoin Logo"/>
        </div>

        <div class="footer__iconbox ">
            <img class="footer__icon" src="/themes/ofertas/img/ethereum.png" alt="Ethereum Logo"/>
        </div>

        <div class="footer__iconbox ">
            <img class="footer__icon" src="/themes/ofertas/img/litecoin.png" alt="Litecoin Logo"/>
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
                <span class="copyright-symbol">©</span><span>WILD CRYPTO B.V.</span>
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
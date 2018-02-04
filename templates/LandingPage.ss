<!DOCTYPE html>
<!--[if !IE]><!-->
<html lang="$ContentLocale">
<!--<![endif]-->
<!--[if lte IE 9]>
<link href='$ThemeDir/javascript/iealert/iealert_files/style.css' rel='stylesheet' type='text/css'>
<link href='$ThemeDir/javascript/iealert/iealert_files/style_dev.css' rel='stylesheet' type='text/css'>
<script src="/js/html5shiv.js" type="text/javascript"></script>
<script src="/js/respond.min.js" type="text/javascript"></script>
<![endif]-->
<!--[if lt IE 9]>
<link href='$ThemeDir/javascript/iealert/iealert_files/style_8.css' rel='stylesheet' type='text/css'>
<![endif]-->
<!--[if IE 6 ]><html lang="$ContentLocale" class="ie ie6"><![endif]-->
<!--[if IE 7 ]><html lang="$ContentLocale" class="ie ie7"><![endif]-->
<!--[if IE 8 ]><html lang="$ContentLocale" class="ie ie8"><![endif]-->
<head>
    <base href="/"/>
    <title>AfroMillionsLotto</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0">
    <meta http-equiv="Content-type" content="text/html; charset=utf-8" />
    $MetaTags(false)

    <!-- for Facebook -->
    <meta property="og:title" content="{$facebookMetaTitle()}" />
    <meta property="og:type" content="website" />
    <meta property="og:image" content="{$BaseHref}{$ThemeDir}/images/logo2.png" />
    <meta property="og:image:width" content="500" />
    <meta property="og:image:height" content="500" />
    <meta property="og:url" content="{$BaseHref}" />
    <meta property="og:description" content="{$facebookMetaDescription()}" />

    <!-- for Twitter -->
    <meta name="twitter:card" content="summary" />
    <meta name="twitter:title" content="{$facebookMetaTitle()}" />
    <meta name="twitter:description" content="{$facebookMetaDescription()}" />
    <meta name="twitter:image" content="{$BaseHref}{$ThemeDir}/images/logo2.png" />

    <link href='https://fonts.googleapis.com/css?family=Open+Sans:400,700' rel='stylesheet' type='text/css'>

    <!--[if lt IE 9]>
        <script src="//html5shiv.googlecode.com/svn/trunk/html5.js"></script>
    <![endif]-->

    <link rel="shortcut icon" href="$ThemeDir/images/favicon.png" />
</head>
<body class="landingpage">
<header class="header">
    <div class="inner row center-outer">
        <div class="col-md-4 col-sm-4 col-xs-12">
            <div class="header-logo-container">
                <a href="$Top.getSubdomainUrl('home', '/')">
                    <img class="header_logo" src="$ThemeDir/images/logo2.png" alt="AfroMillionsLotto">
                </a>
            </div>
        </div>
        <div class="col-xs-12 countdown-area center-outer">
            <div class="center-inner text-center">
                <div class="next-draw">Next Draw:</div>
                <% if $Top.ofertas_comingsoon() %>
                    <% with $Top.ofertas_comingsoon() %>
                        <div hidden id="next-draw-time">$ClosingTime</div>
                    <% end_with %>
                <% else %>
                    <% with $Top.currentDraw() %>
                        <% if $closedAt %>
                            <div hidden id="next-draw-time">0000-00-00 00:00:00</div>
                        <% else %>
                            <div hidden id="next-draw-time">$closingTime</div>
                        <% end_if %>
                    <% end_with %>
                <% end_if %>
                <div class="countdown"></div>
            </div>
        </div>
        <div class="col-md-4 col-sm-4 col-xs-12 center-inner text-center header-country-area">
            <div class="about-us-button">
                <a href="$Top.getSubdomainUrl('home','/about/')" class="btn btn-default btn-md dropdown-toggle">About Us</a>
            </div>
            <div class="header-country-selection">
                <div id="country-picker" data-input-name="country" data-selected-country="NG" data-possible-countries="$CountriesWithClubs" onSelect="select"></div>
            </div>
        </div>
    </div>
</header>
<div class="clearfix"></div>

<div class="focus-area center-outer">
    <div class="focus-panel center-inner">
        <img src="/themes/ofertas/images/jackpot.png" />
        <% if $Top.ofertas_comingsoon() %>
            <% with $Top.ofertas_comingsoon() %>
                <svg xmlns="http://www.w3.org/2000/svg" version="1.1" viewBox="0 0 300 270">
                    <path id="curve" d="M36 168 Q 148 144 264 168" stroke="transparent" fill="transparent"></path>
                    <text font-size="$FontSize" letter-spacing="-3" textLength="228">
                        <textPath xmlns:xlink="http://www.w3.org/1999/xlink" xlink:href="#curve" font-size="$FontSize" letter-spacing="-3" textLength="228" class="jackpot-size">$MessageOverride</textPath>
                    </text>
                </svg>
            <% end_with %>
        <% else %>
            <% with $Top.currentDraw() %>
            <svg xmlns="http://www.w3.org/2000/svg" version="1.1" viewBox="0 0 300 270">
                <path id="curve" d="M36 168 Q 148 144 264 168" stroke="transparent" fill="transparent"></path>
                <text font-size="41" letter-spacing="-3" textLength="228">
                    <textPath xmlns:xlink="http://www.w3.org/1999/xlink" xlink:href="#curve" font-size="41" letter-spacing="-3" textLength="228" class="jackpot-size">$Jackpot.narrative</textPath>
                </text>
            </svg>
                <%--<span class="drawsidebar__overlay drawsidebar__overlay--largetext-big" style="font-size: 14px; top: 182px;">$dayOfDraw</span>--%>
                <span class="drawsidebar__overlay drawsidebar__overlay--largetext-big" style="font-size: 14px; top: 182px;">$dateOfDraw</span>
            <% end_with %>
        <% end_if %>
    </div>
    <div class="clearfix"></div>
</div>

<div class="content-area">
    <div class="col-xs-12 text-center">
        <h1 style="line-height: 1.3;">Play AfroMillionsLotto for the biggest jackpots in Africa and support the football club of your choice!</h1>
    </div>
    <div class="col-xs-12 content-area-inner text-center">
        <h1>How it works:</h1>
        <div class="how-it-works">
            <div class="how-it-works-item">
                <span class="bullet-point">1.</span>
                <div class="how-it-works-item-text">Select your football club</div>
            </div>
            <div class="how-it-works-item">
                <span class="bullet-point">2.</span>
                <div class="how-it-works-item-text">Sign Up</div>
            </div>
            <div class="how-it-works-item">
                <span class="bullet-point">3.</span>
                <div class="how-it-works-item-text">Deposit Funds</div>
            </div>
            <div class="how-it-works-item">
                <span class="bullet-point">4.</span>
                <div class="how-it-works-item-text">Play & Win</div>
            </div>
            <span class="stretch"></span>
        </div>
        <div class="logo-slider-wrapper">
            <div id="no-clubs"></div>
            <div class="logo-slider">
                <% loop $Clubs %>
                    <div class="slider-item $Country">
                        <a title="$Name" href="$Top.getSubdomainUrl($UrlName, '/')">
                            <img class="slider-logo" src="/assets/Uploads/Logos/$Logo" />
                        </a>
                    </div>
                <% end_loop %>
            </div>
            <div id="left-scroll" class="fa fa-angle-left"></div>
            <div id="right-scroll" class="fa fa-angle-right"></div>
        </div>
    </div>
    <div class="clearfix"></div>
</div>

<footer>
    <div class="contact-bar">
        <div class="container footer footer-padding">
            <div class="col-md-3 col-sm-3 col-xs-12 small-screen-paddingcolumn no-padding contact-us contact-us-title text-left">
                Contact Us:
            </div>
            <div class="col-md-4 col-sm-4 col-xs-12 small-screen-paddingcolumn no-padding text-left">
                <span class="fa fa-skype" title="Skype"></span><span title="Skype">afromillionslotto</span>
            </div>
            <div class="col-md-5 col-sm-5 col-xs-12 logo-column no-padding text-left">
                <span class="fa fa-envelope" title="Email"></span><a title="Email" href="mailto:support@afromillionslotto.zendesk.com">support@afromillionslotto.zendesk.com</a>
            </div>
            <div class="col-md-3 col-sm-3 col-xs-12 small-screen-paddingcolumn no-padding contact-us text-left">
            </div>
            <div class="col-md-4 col-sm-4 col-xs-12 small-screen-paddingcolumn no-padding text-left">
                <span class="fa fa-phone" title="Phone"></span><span title="Phone">+44 207 193 2623</span>
                <div class="phone-text">This is a UK number and you may incur international call charges</div>
            </div>
            <div class="clearfix"></div>
        </div>
    </div>

    <div class="top-bar">
        <div class="container footer footer-padding">
            <div class="col-md-4 col-sm-4 col-xs-12 small-screen-paddingcolumn no-padding text-right">
                <span class="footer-logo-holder">
                    <img class="footer-logo" src="/themes/ofertas/images/twelve40/IL_Over18_Logo.png" alt="Over 18 Logo">
                    <span class="over-18-message right">You must be 18 or over to play or claim a prize.</span>
                </span>
            </div>
            <div class="col-md-4 col-sm-4 col-xs-12 small-screen-paddingcolumn no-padding text-center">
                <div id="ceg-seal-container" data-ceg-seal-id="dc5de6b6b945952b404d" data-ceg-image-size="128" data-ceg-image-type="basic-small"></div><script type="text/javascript" src="https://dc5de6b6b945952b404d.curacao-egaming.com/ceg-seal.js"></script>
            </div>
            <div class="col-md-4 col-sm-4 col-xs-12 text-left">
                <div class="allrights-space">
                    <h1>{$Top.i18n("Footer__RightsMessage")}</h1>
                </div>
            </div>
        </div>
    </div>

    <div class="main-padding bottom-bar text align">
        <div class="inner">
            <div class="col-xs-12 jgcText">
                <span class="copyright-symbol">©</span><span>{$Top.i18n("Footer__RegisteredAddressMessage")}</span>
            </div>
        </div>
        <div class="clearfix"></div>
    </div>
</footer>

<script>
    (function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function()
    { (i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),
            m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)
    })(window,document,'script','https://www.google-analytics.com/analytics.js','ga');

    ga('create', '$Top.ClubModule__getTrackingCode()', 'auto');
    ga('send', 'pageview');
</script>

    <% require javascript('themes/ofertas/javascript/jquery.flagstrap.min.js') %>
    <% require javascript('themes/ofertas/javascript/slick.min.js') %>
    <% require javascript('themes/ofertas/javascript/fastclick.min.js') %>
    <% require javascript('themes/ofertas/javascript/flipclock.min.js') %>
    <% require javascript('themes/ofertas/javascript/landingpage.js') %>
    <% require javascript('themes/ofertas/javascript/firefoxsvgfix.js') %>
</body>

</html>

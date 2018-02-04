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
                        <% if $ClosedAt %>
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
                <a href="$Top.getSubdomainUrl('home', '/')" class="btn btn-default btn-md dropdown-toggle">Home</a>
            </div>
        </div>
    </div>
</header>
<div class="clearfix"></div>

<section class="title-section">
    <div class="content-area">
        <h1>About Us</h1>
    </div>
</section>

<section class="main-content">
    <div class="content-area cmsinput">$Content</div>
</section>

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

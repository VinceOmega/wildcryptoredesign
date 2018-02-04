<!DOCTYPE html>
<!--[if !IE]><!-->
<html lang="$ContentLocale">
<!--<![endif]-->
<!--[if IE 6 ]><html lang="$ContentLocale" class="ie ie6"><![endif]-->
<!--[if IE 7 ]><html lang="$ContentLocale" class="ie ie7"><![endif]-->
<!--[if IE 8 ]><html lang="$ContentLocale" class="ie ie8"><![endif]-->
<head>
    <base href="/"/>
    <title><% with Game %>$name<% end_with %></title>
    $MetaTags(false)
    <meta charset="utf-8">
    <meta name="viewport" content="initial-scale=1, minimum-scale=1, maximum-scale=1, user-scalable=no, width=device-width, minimal-ui" />
    <meta name="apple-mobile-web-app-capable" content="yes" />
    <meta name="apple-mobile-web-app-status-bar-style" content="black" />
    <meta name="mobile-web-app-capable" content="yes" />

    <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
    $MetaTags(false)
    <!--[if lt IE 9]>
    <script src="//html5shiv.googlecode.com/svn/trunk/html5.js"></script>
    <![endif]-->
    <link rel="shortcut icon" href="$ThemeDir/images/favicon.png" />
    <style>
        .game {
            background: url('/themes/ofertas/images/iwg/loading.gif') no-repeat center fixed;
        }
    </style>
</head>
<body>
    <% require javascript('themes/ofertas/javascript/game/game-framework.min.js') %>
<!-- Google Tag Manager -->
<noscript><iframe src="//www.googletagmanager.com/ns.html?id=GTM-5PHHBN"
                  height="0" width="0" style="display:none;visibility:hidden"></iframe></noscript>
<script>(function(w,d,s,l,i){w[l]=w[l]||[];w[l].push({'gtm.start':
        new Date().getTime(),event:'gtm.js'});var f=d.getElementsByTagName(s)[0],
        j=d.createElement(s),dl=l!='dataLayer'?'&l='+l:'';j.async=true;j.src=
        '//www.googletagmanager.com/gtm.js?id='+i+dl;f.parentNode.insertBefore(j,f);
})(window,document,'script','dataLayer','GTM-5PHHBN');
</script>
<!-- End Google Tag Manager -->
<% if $Game %>
<% with $Game %>
    <div id="gameArea">
        <canvas id="game" class="game" width="960" height="640">{$Top.i18n("Game__UnsupportedBrowserMessage")}</canvas>
    </div>
    <script type="application/javascript">
        window.gifConfig = {
                    basePath: '{$assetsURL}',
                    finishURL: "{$FinishURL}?tryGame=<% if Top.tryGame %>true<% else %>false<% end_if %>",
                    ticket: {
                        gameId: "{$uniqueKey}",
                        extra: {
                            tryGame: <% if Top.tryGame %>true<% else %>false<% end_if %>
                        }
                    },
                    game: {$defaultLoaderConfig.Raw},
                    overlay: {
                        load: [ "{$Top.ThemeDir}/javascript/game/overlays/twelve40-gameFramework_error.min.js" ],
                    }
            };


    </script>
<% end_with %>
<% end_if %>
</body>
</html>

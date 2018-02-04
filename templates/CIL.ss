<!DOCTYPE html>
<!--[if !IE]><!-->
<html lang="$ContentLocale">
<!-- CIL is the main controller for the CMS pages -->

<!--<![endif]-->
<!--[if lte IE 9]>
    <link href='$ThemeDir/javascript/iealert/iealert_files/style.css' rel='stylesheet' type='text/css'>
    <link href='$ThemeDir/javascript/iealert/iealert_files/style_dev.css' rel='stylesheet' type='text/css'>
    <script src="/js/html5shiv.js" type="text/javascript"></script>
    <script src="/js/respond.min.js" type="text/javascript"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/document-register-element/1.4.1/document-register-element.js"></script>
    <link href='$ThemeDir/css/wild-shapeshift-widget.min.css' rel='stylesheet' type='text/css'>
<![endif]-->
<!--[if lt IE 9]>
    <link href='$ThemeDir/javascript/iealert/iealert_files/style_8.css' rel='stylesheet' type='text/css'>
<![endif]-->
<!--[if IE 6 ]><html lang="$ContentLocale" class="ie ie6"><![endif]-->
<!--[if IE 7 ]><html lang="$ContentLocale" class="ie ie7"><![endif]-->
<!--[if IE 8 ]><html lang="$ContentLocale" class="ie ie8"><![endif]-->
<head>
    <base href="/"/>
    <title><% if $MetaTitle %>$MetaTitle<% else %>$Title<% end_if %> &raquo; $SiteConfig.Title</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
    $MetaTags(false)

    <!--[if lt IE 9]>
        <script src="//html5shiv.googlecode.com/svn/trunk/html5.js"></script>
    <![endif]-->

    <link rel="icon" href="$ThemeDir/img/WildCrypto-ICON.png" type="image/png">

    <style>
        @import url('$ThemeDir/css/style.css');
        @import url('$ThemeDir/css/wild.css');

     </style>

    <% if $ClubModule__CurrentData(false) %><% with $ClubModule__CurrentData(false) %>
        <% include Club_CSS_Override %>
    <% end_with %><% end_if %>
</head>
<body class="root {$ClassName}<% if $isDev %> dev<% end_if %>" <% if $Top.i18nScriptDirection %>dir="$Top.i18nScriptDirection"<% end_if %> data-user-id="{$WildUserId}">
    <% include Generic_GoogleTag %>
    <% if $isDev %><div class="breakpoint"></div><% end_if %>
    <div id="container" class="container-fluid">
        <% include Generic_New_Header %>

        <% if $ClassName == "HomePage" %>
            <% include Slider %>
            <% include QuickLinks %>
        <% end_if %>
        <% include Generic_Notifications %>

        <main role="main" id="{$ClassName}" class="row">

            <% include Generic_Message %>
            <% include Generic_FocusArea %>
            <% include Breadcrumbs %>
            <% if $RecentlyPurchased == 0 %>
                <% include Generic_SocialSharing %>
            <% end_if %>
           

            $Layout

        </main>

        <% include Generic_New_Footer %>
    </div>

    <% if $Triggers %>
        <% loop $Triggers %>
            $Render
        <% end_loop %>
    <% end_if %>

    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.3/umd/popper.min.js" integrity="sha384-vFJXuSJphROIrBnz7yo7oB41mKfc8JzQZiCq4NCceLEaO4IHwicKwpJf9c9IpFgh" crossorigin="anonymous"></script>
    <script src="https://fastcdn.org/FlowType.JS/1.1/flowtype.js"></script>
    <% require block('framework/thirdparty/jquery/jquery.min.js') %>
    <% require javascript('themes/ofertas/javascript/firefoxsvgfix.js') %>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/vue/2.5.13/vue.runtime.min.js"></script>
    <% require javascript('themes/wild/javascript/wild-shapeshift-widget.min.js') %>
</body>
</html>

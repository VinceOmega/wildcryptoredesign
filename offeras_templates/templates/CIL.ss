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
    <title><% if $MetaTitle %>$MetaTitle<% else %>$Title<% end_if %> &raquo; $SiteConfig.Title</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
    $MetaTags(false)

    <!--[if lt IE 9]>
        <script src="//html5shiv.googlecode.com/svn/trunk/html5.js"></script>
    <![endif]-->

    <script src="https://cdnjs.cloudflare.com/ajax/libs/document-register-element/1.4.1/document-register-element.js"></script>

    <link rel="shortcut icon" href="$ThemeDir/images/favicon.png" />
    <link href='https://fonts.googleapis.com/css?family=Open+Sans:400,700' rel='stylesheet' type='text/css'>

    <% if $ClubModule__CurrentData(false) %><% with $ClubModule__CurrentData(false) %>
        <% include Club_CSS_Override %>
    <% end_with %><% end_if %>
</head>
<body class="root {$ClassName}<% if $isDev %> dev<% end_if %>" <% if $Top.i18nScriptDirection %>dir="$Top.i18nScriptDirection"<% end_if %>>
    <% include Generic_GoogleTag %>
    <% if $isDev %><div class="breakpoint"></div><% end_if %>

    <% include Generic_Header %>
    <% include Generic_Message %>

    <% if $ClassName == "HomePage" %>
        <% include Slider %>
        <%-- <% include QuickLinks %> --%>
    <% end_if %>
    <% include Generic_FocusArea %>

    <section class="main-content">
        <% include Breadcrumbs %>
        <% if $RecentlyPurchased == 0 %>
            <% include Generic_SocialSharing %>
        <% end_if %>
        <% include Generic_Notifications %>

        $Layout
    </section>

    <% include Generic_Footer %>

    <% if $Triggers %>
        <% loop $Triggers %>
            $Render
        <% end_loop %>
    <% end_if %>

    <% require javascript('themes/ofertas/javascript/firefoxsvgfix.js') %>
</body>
</html>

<% if $Breadcrumb %>
    <div class="breadcrumbbox">
        <a href="/" class="breadcrumbbox__element breadcrumbbox__element--link">{$Top.i18n("BreadCrumb__Home")}</a>
        <span class="breadcrumbbox__seperator">&gt;</span>
        <% loop $BreadCrumb %>
            <% if Last %>
                <span class="breadcrumbbox__element">$Item</span>
            <% else %>
                <a href="$BreadCrumbLink" class="breadcrumbbox__element breadcrumbbox__element--link">$Item</a>
                <span class="breadcrumbbox__seperator">&gt;</span>
            <% end_if %>
        <% end_loop %>
    </div>
<% end_if %>
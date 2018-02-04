<div class="querybox">
    <div class="querybox__titlebox">
        <p class="querybox__subtitle">{$Top.i18n("Support__Status")}</p>
        <p class="querybox__title">$Status</p>
    </div>

    <% if $Comments %>
        <% loop $Comments %>
            <% if Last %>
                <h2 class="querybox__querytitle">{$Top.i18n("Support__YourQuery")}</h2>
            <% end_if %>
            <div class="query <% if $name = "Support" %>query--support query--offset<% end_if %>">
                <div class="query__titlebox">
                    <span class="query__title">$name</span>
                    <span class="query__date">$created</span>
                </div>
                <div class="query__content">
                    $comment
                </div>
            </div>
        <% end_loop %>
    <% end_if %>

    <% if $CanClose %>
        <a class="button secondarycolour button--secondary"
           data-text="Are you sure you wish to close this query?"
           data-confirm="follow"
           href="{$Link}queries/{$SupportQuery.id}/close">
            {$Top.i18n("Support__CloseQuery")}
        </a>
    <% end_if %>
</div>
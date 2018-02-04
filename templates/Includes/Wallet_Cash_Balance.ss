<span class="currency<% loop $AdditionalClasses %> $Class<% end_loop %>">
    <% if $Small %><% else %><span class="currency__symbol balance__currency">w </span><% end_if %><% if $Small %><span class="currency__symbol balance__currency">w 0.</span><% end_if %><span class="currency__amount balance__amount" <% loop $Datas %>data-{$Key}="{$Value}"<% end_loop %>>{$Pool}</span>
</span>
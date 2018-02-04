<!-- FOCUS AREA -->
<% with $FocusArea %>
    <% if $Show %>
        <section class="focusarea focusareacolour focusarea--{$Top.ClassName} <% if $Background %> focusarea--background <% end_if %><% if $CustomClasses %> $CustomClasses<% end_if %><% if $Class %> $Class<% end_if %><% if $Big %> focusarea--big<% else %> focusarea--small<% end_if %>"
                 <% if $Background %>style="background-image: url('{$Background}');"<% end_if %>
                 alt="Banner Image">

            <% if $Style %>
                <style type="text/css">
                        $Style
                </style>
            <% end_if %>

            <div class="focusarea__container <% if $Class %>$Class<% end_if %> <% if $Link %> $Link <% end_if %>">
                <div class="focusarea__inner<% if $Opaque %> focusarea__inner--opaque<% end_if %>">
                    $Layout
                </div>
            </div>
        </section>
    <% else %>
        <div style="min-height: 20px;"></div>
    <% end_if %>
<% end_with %>
<!-- FOCUS AREA -->
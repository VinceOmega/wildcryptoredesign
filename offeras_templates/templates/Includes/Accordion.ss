<div class="accordion">
    <% if $Accordion %>
        <% if $Top.showAccordionMore %><% else %>
            <div class="accordion__title primarycolour">{$Top.i18n("FAQAccordion__TitleMessage")}</div>
        <% end_if %>
        <div class="accordion__content panel-group" id="accordion">
            <% loop $Accordion %>
            <div class="panel panel-default panel-edit">
                <div class="panel-heading">
                    <h4 class="panel-title">
                        <a data-toggle="collapse" data-parent="#accordion" href="{$Top.Link}#collapse{$Pos}" class="collapsed">
                            <span class="glyphicon glyphicon-plus-sign icon"></span>
                            <span>$Title</span>
                        </a>

                    </h4>
                </div>
                <div id="collapse{$Pos}" class="panel-collapse collapse panel-content">
                    <div class="panel-body">
                        $Content
                    </div>
                </div>
            </div>
            <% end_loop %>
        </div>
        <% if $Top.showAccordionMore %><% else %>
            <a href="/faqs/" class="icon button button--thin secondarycolour" style="float: right; margin-top:10px;">{$Top.i18n("FAQAccordion__MoreMessage")}</a>
        <% end_if %>
    <% end_if %>
</div>
<div class="clearfix"></div>

<section class="section -info-box col-lg-12 col-md-12 col-sm-12 col-xs-12">

    <% if $Accordion %>
        <%-- if $Top.showAccordionMore %><% else %>
            <div class="accordion__title primarycolour">{$Top.i18n("FAQAccordion__TitleMessage")}</div>
        <% end_if --%>
        <div class="div -width--px1366">
           <div class="div" id="accordion">
                <div class="div -info-box-header">
                    <i class="fa fa-question-circle" aria-hidden="true"></i><h3>{$Top.i18n("FAQAccordion__TitleMessage")}</h3>
                </div>
                <% loop $Accordion %>
                    <div class="panel-default">
                        <div class="panel-heading">
                            <h4>
                                <a data-toggle="collapse" data-parent="#accordion" href="{$Top.Link}#collapse{$Pos}" class="collapsed">
                                    <span>$Title</span>
                                </a>
                            </h4>
                        </div>
                        <div id="collapse{$Pos}" class="collapse">
                            <div class="panel-body">
                                $Content
                            </div>
                        </div>
                    </div>
                <% end_loop %>
                <% if $Top.showAccordionMore %><% else %>
                    <div class="panel-default">
                        <div class="div -info-box -cta">
                            <a href="/faqs/" class="a btn -btn -btn-cta">{$Top.i18n("FAQAccordion__MoreMessage")}</a>
                        </div>
                    </div>
                 <% end_if %>
           </div>
           <img src="$ThemeDir/img/FAQ-Guys.png" alt="Wild Crypto FAQs Mascots" class="img -faq -faq--mascots">
        </div>
    <% end_if %>

</section>
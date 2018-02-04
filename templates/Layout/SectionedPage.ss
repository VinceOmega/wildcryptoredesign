<div class="cmsinput cmsinput--faint cmsinput--sectioned cmsinput--links">
   
    <div class="div -width--px1366">
        <div class="cmsinput__section">
            $Content
        </div>

        <div id="Contents" class="pageheader primarycolour">{$Top.i18n("Page__Contents")}</div>
        <ol>
        <% loop $Sections %>
            <li>
                <a href="#{$Title}"><span class="position">$Pos</span> $Title</a>
            </li>
        <% end_loop %>
        </ol>

        <% loop $Sections %>
            <div class="section">
                <h3>
                    <a href="#Contents"><span class="to-top">{$Top.i18n("Page__BackToContents")}</span></a>
                    <span class="position">$Pos</span>
                    <a id="{$Title}">$Title</a>
                </h3>
                $Content
            </div>
        <% end_loop %>

    </div>
    
</div>
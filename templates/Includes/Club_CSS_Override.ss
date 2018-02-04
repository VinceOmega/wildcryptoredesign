<style>
    <%-- if $PrimaryColour --%>
        .primarycolour,
        .cmsinput table thead td p,
        .cmsinput table thead td,
        .pageheader {
            background-color: {$PrimaryColour} !important;
        }
        .primarytextcolour {
            color: {$PrimaryColour} !important;
        }
        .cmsinput--links a,
        .cmsinput--links a:hover,
        .cmsinput--links a:focus,
        .cmsinput--links a:active,
        .panel-body a {
            color: {$PrimaryColour} !important;
        }
        .navigation__item--current .navigation__text,
        .navigation__item:hover .navigation__text {
            border-bottom: 3px solid {$PrimaryColour} !important;
        }
    <%-- end_if --%>

    <%-- if $SecondaryColour --%>
        .button--teal,
        .secondarycolour {
            background-color: {$SecondaryColour} !important;
        }
        .secondarytextcolour {
            color: {$SecondaryColour} !important;
        }
    <%-- end_if --%>

    <%-- if $TertiaryColour --%>
        .tertiarycolour {
            background-color: {$TertiaryColour} !important;
        }
        .tertiarytextcolour {
            color: {$TertiaryColour} !important;
        }
    <%-- end_if --%>

    <%-- if $ShadowColour --%>
        .shadowcolour {
            background-color: {$ShadowColour} !important;
        }
        .shadowtextcolour {
            color: {$ShadowColour} !important;
        }
    <%-- end_if --%>

    <%-- if $FocusAreaColour --%>
        .focusareacolour {
            background-color: {$FocusAreaColour} !important;
        }
        .focusareatextcolour {
            color: {$FocusAreaColour} !important;
        }
    <%-- end_if --%>

    <%-- if $FooterColour --%>
        .footercolour {
            background-color: {$FooterColour} !important;
        }
        .footertextcolour {
            color: {$FooterColour} !important;
        }
    <%-- end_if --%>
</style>

<% if $Draws %>
    <% loop $Draws %>
        <section class="drawbox containerwrap containerwrap--center">
            <div class="drawbox__content containerwrap__item--grow">
                <h4 class="drawbox__title">$name</h4>
                <% if $drawNumber %>
                    <div class="drawbox__subtitle">$closingTime.Long Draw</div>
                <% end_if %>
                <div class="drawbox__message">$Details.summary</div>
            </div>
            <a class="button primarycolour button--black" href="{$Link(results)}">{$Top.i18n("Page__ViewResults")}</a>
        </section>
    <% end_loop %>
<% else %>
<div class="drawbox drawbox--large cmsinput cmsinput--links cmsinput--faint cmsinput--spaced">
    $Top.NoResultsMessage
</div>
<% end_if %>

<% include Accordion %>
<% include InstantWinGames %>
<h1 class="focusarea__titletext focusarea__titletext--white">$Title</h1>
<% if $SubTitle %>
    <p class="focusarea__subtitle">$SubTitle</p>
<% end_if %>
<hr/>

<div class="focusarea__content">
    <% if $errormessage %><p style='text-align:center; color: rgba(0, 216, 255, 0.90);'>$errormessage</p><% end_if %>
    <% if $Message %><p>$Message</p><% end_if %>
</div>

<div class="containerwrap containerwrap--center focusarea__content--gap">
    <a class="button secondarycolour" href="{$TryAgain}">{$Top.i18n("TopUp__TryAgain")}</a>
    OR
    <a class="button secondarycolour" href="/contact20us">{$Top.i18n("TopUp__RaiseAQuery")}</a>
</div>

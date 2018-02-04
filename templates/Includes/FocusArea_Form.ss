<div class="containerwrap containerwrap--center">
    <div class="containerwrap__item--grow title-layout">
        <h1 class="focusarea__titletext focusarea__titletext--white">$Title</h1>
        <% if $SubTitle %>
            <p class="focusarea__subtitle">$SubTitle</p>
        <% end_if %>
    </div>
    <% if $Form %><% if $Form.Hidden %>
        <a class="button secondarycolour button--secondary button--plus toggle toggle-form js <% if SubTitle %>subtitle-button<% end_if %>" data-toggle=".form-holder">
            <div class="toggle-form-open <% if $Form.Errored %>hidden<% else %><% end_if %>">
                <span>$ButtonText</span>
                <span class="glyphicon glyphicon-plus-sign"></span>
            </div>
            <div class="toggle-form-close <% if $Form.Errored %><% else %>hidden<% end_if %>">
                <span>$ButtonText</span>
                <span class="glyphicon glyphicon-minus-sign"></span>
            </div>
        </a>
    <% end_if %><% end_if %>
</div>

<% if $Flop %>
    <div class="col-xs-12 col-sm-6 col-sm-offset-3 flip-flop-container text-center">
        <div class="btn-group btn-group-justified" role="group" aria-label="flip-flop">
            <a type="button secondarycolour" class="btn btn-default<% if $Flop.Active %><% else %> active<% end_if %>" data-flip-flop=".flip">$Flip.Title</a>
            <a type="button secondarycolour" class="btn btn-default<% if $Flop.Active %> active<% end_if %>" data-flip-flop=".flop">$Flop.Title</a>
        </div>
    </div>
<% end_if %>

<% if $Form %>
    <% if $Flop %><div class="flip-flop flip<% if $Flop.Active %> hidden<% end_if %>"><% end_if %>
        <div class="form-holder <% if $Form.Hidden %><% if $Form.Errored%><% else %>collapsed<% end_if %><% end_if %>">
            <div class="containerwrap focusarea__formbox">
                <div class="containerwrap__item--grow">
                    $Form
                </div>
                <% if $Form.Half %>
                    <% if $Text %>
                        <div class="containerwrap__item--grow">
                            <div class="focusarea__formdescription cmsinput cmsinput--bright cmsinput--small">
                                $Text
                            </div>
                        </div>
                    <% end_if %>
                <% end_if %>
            </div>
        </div>
    <% if $Flop %></div><% end_if %>
<% end_if %>
<% if $Flop %><% with $Flop %>
<div class="flip-flop flop<% if $Active %><% else %> hidden<% end_if %>">
    <div class="form-holder <% if $Form.Hidden %><% if $Form.Errored%><% else %>collapsed<% end_if %><% end_if %>">
        <div class="containerwrap containerwrap--nowrap containerwrap--xswrap">
            <div class="containerwrap__item--grow">
                $Form
            </div>
            <% if $Form.Half %>
                <% if $Text %>
                    <div class="containerwrap__item--grow">
                        <div class="focusarea__formdescription cmsinput cmsinput--bright cmsinput--small">
                            $Text
                        </div>
                    </div>
                <% end_if %>
            <% end_if %>
        </div>
    </div>
</div><% end_with %><% end_if %>
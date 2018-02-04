<% require css("themes/ofertas/javascript/advanced-datatable/css/jquery.dataTables.min.css") %>
<% require css("themes/ofertas/javascript/data-tables/DT_bootstrap.css") %>
<div class="main main-padding-big ">
    <div class="row">
        
        <% if $MySyndicates %>
        <div class="col-xs-12 syndicate-padding">
            <div class="inner">
                <h2 class="inner-title-padding">{$Top.i18n("Draw__Syndicate__YourSyndicates")}</h2>
                <div class="subbox">
                    <table class="data-table table-hover responsive">
                        <thead>
                            <tr>
                                <th>{$Top.i18n("Draw__Syndicate__Table__Name")}</th>
                                <th>{$Top.i18n("Draw__Syndicate__Table__Draw")}</th>
                                <th>{$Top.i18n("Draw__Syndicate__Table__DrawDate")}</th>
                                <th>{$Top.i18n("Draw__Syndicate__Table__Leader")}</th>
                                <th>{$Top.i18n("Draw__Syndicate__Table__Status")}</th>
                                <th class="hidden">{$Top.i18n("Draw__Syndicate__Table__Link")}</th>
                            </tr>
                        </thead>
                        <tbody>
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
        <% else %>
            <div class="col-xs-12">
                <div class="content description">$Content</div>
            </div>
        <% end_if %>
    </div>
    
    <% if $MyPendingInvites %>
        <div class="row">
            <div class="col-xs-12 lottery-space">
                <% loop $MyPendingInvites %>
                    <div class="row">
                        <div class="col-sm-12">
                            <section class="panel panel-border">
                        
                                <div class="panel-body panel-body-padding">

                                    <div class="col-sm-9">
                                        <div class="panel-heading content">
                                            <h1>$syndicateName</h1>    
                                        </div>
                                    </div>
                                    <div class="col-sm-3 lottery-top-button">
                                        <a class="button secondarycolour beta spaced" href="/syndicate/{$syndicateId}/accept/{$id}">{$Top.i18n("Draw__Syndicate__Accept")}</a>
                                    </div>
                                </div>
                            </section>
                        </div>
                    </div>
                <% end_loop %>
            </div>
        </div>
    <% end_if %>
    <div class="row">
        <% include Accordion %>
    </div>
    <div class="row">
        <% include InstantWinGames %>
    </div>
    <div class="clearfix footer-space"></div>
</div>
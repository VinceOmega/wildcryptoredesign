<div class="notifications">
    <div class="standard-notification">
        <div class="col-sm-8 notification-text">
            <p>{$Top.i18n("Draw__Syndicate__CreateMessage")}</p>
        </div>

        <div class="col-sm-3 btn notification-btn">
            <a href="<% if Top.isSignedIn%>/syndicate<% else %>/login<% end_if %>">
                {$Top.i18n("Draw__Syndicate__CreateASyndicate")}
                <span class="glyphicon glyphicon-plus-sign icon"></span>
            </a>
        </div>
        <div class="clearfix"></div>
    </div>
</div>
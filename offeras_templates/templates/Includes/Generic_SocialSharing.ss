
<%-- if $ShowSocialSharing %>
    <div class="socialbox <% if $Notifications %>socialbox--has-notifies<% else %>socialbox--no-notifies<% end_if %>"
        <% with $Top.ClubModule__getData() %>
         data-facebookurl="$FacebookUrl" data-twitterurl="$TwitterUrl" data-googleplusurl="$GooglePlusUrl"
         data-instagramurl="$InstagramUrl" data-baseUrl="{$BaseHref}" data-twitterText="{$Top.twitterMetaDescription()}" data-whatsappText="{$Top.whatsappMetaDescription()}"
        <% end_with %>
         ></div>
<% end_if --%>

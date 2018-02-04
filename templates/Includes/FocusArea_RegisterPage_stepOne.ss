<h1 class="register__title">{$Top.i18n("Register__CreateMyAccount")}</h1>
<div class="containerwrap containerwrap--responsive containerwrap--reverse">
    <div class="register__container register__container--right containerwrap__fillhalf login-form">
        <div class="">
            <h3 class="register__subtitle">
                {$Top.i18n("Register__AlreadyHaveAnAccount")}
            </h3>

            <a href="{$Link}social/facebook" class="button button--facebook">
                <i class="fa fa-facebook"></i>
                <span class="button__text">{$Top.i18n("Register__SignInWithFacebook")}</span>
            </a>

            $APILoginForm

        </div>
        <div class="underagewarning hidden-xs">
            $Content
        </div>
    </div>
    <hr class="hr-separator visible-xs">
    <div class="register__container containerwrap__fillhalf register-form">
        <h3 class="register__subtitle">
            {$Top.i18n("Register__CreateAccountMessage")}
        </h3>
        <% if $isRegistrationActive %>

        <a href="{$Link}social/facebook" class="button button--facebook">
            <i class="fa fa-facebook"></i>
            <span class="button__text">{$Top.i18n("Register__SignUpWithFacebook")}</span>
        </a>

        $RegisterForm

        <% else %>
            <div class="caption desktop register-info">
                $RegistrationUnavailableMessage
            </div>
        <% end_if %>
    </div>
</div>
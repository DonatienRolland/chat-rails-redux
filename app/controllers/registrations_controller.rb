class RegistrationsController < Devise::RegistrationsController
  def sign_up_params
    devise_parameter_sanitizer.sanitize(:sign_up)
  end

  def account_update_params
    devise_parameter_sanitizer.sanitize(:account_update)
  end

  private

  def sign_up_params
    params.require(:user).permit(:email, :nickname, :password, :password_confirmation)
  end

  def account_update_params
    params.require(:user).permit(:email, :nickname, :password, :password_confirmation)
  end
end

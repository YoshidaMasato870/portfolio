class ApplicationController < ActionController::Base
	before_action :configure_permitted_parameters, if: :devise_controller?
  protected
  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:email, :account_name])
		devise_parameter_sanitizer.permit(:sign_in, keys: [:account_name])
    devise_parameter_sanitizer.permit(:account_update, keys: [:email, :account_name, :account_image, :account_comment])
	end
end

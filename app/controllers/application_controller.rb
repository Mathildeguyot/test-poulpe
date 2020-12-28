class ApplicationController < ActionController::Base
  include Pundit

  protect_from_forgery with: :exception


  before_action :authenticate_user!
  before_action :configure_permitted_parameters, if: :devise_controller?

  after_action :verify_authorized, :except => :index, unless: :devise_controller?
  after_action :verify_policy_scoped, :only => :index, unless: :devise_controller?

  rescue_from Pundit::NotAuthorizedError, with: :user_not_authorized


  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:pseudo])
    devise_parameter_sanitizer.permit(:account_update, keys: [:pseudo])
  end

  private

  def user_not_authorized
    flash[:alert] = "Vous n'êtes pas autorisé à faire cela."
    redirect_to(root_path)
  end
end

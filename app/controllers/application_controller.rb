class ApplicationController < ActionController::Base
  include Pundit
  rescue_from Pundit::NotAuthorizedError, with: :user_not_authorized
  protect_from_forgery with: :exception

  before_action :configure_permitted_parameters, if: :devise_controller?

 rescue_from CanCan::AccessDenied do |exception|
    flash[:error] = exception.message
    redirect_to root_url
  end

  protected

  def configure_permitted_parameters
  	devise_parameter_sanitizer.permit(:sign_up, keys: [:firstname,:lastname, :email, :password  ])
  	devise_parameter_sanitizer.permit(:account_update, keys: [:firstname,:lastname,:project, :email, :password, :current_password ])  
  end

	private
	
	def user_not_authorized
			flash[:alert] = "Access Denied."
			redirect_to (request.referrer || root_path)
		end	


end

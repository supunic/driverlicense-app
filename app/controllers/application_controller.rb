class ApplicationController < ActionController::Base
  before_action :ensure_domain
  before_action :configure_permitted_parameters, if: :devise_controller?

  protect_from_forgery with: :exception

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:name])
    devise_parameter_sanitizer.permit(:sign_up, keys: [:sex])
    devise_parameter_sanitizer.permit(:sign_up, keys: [:age])
    devise_parameter_sanitizer.permit(:account_update, keys: [:name])
  end

  FQDN = 'driverlicense-app.supunic.com'
  def ensure_domain
   return unless /\.herokuapp.com/ =~ request.host
   port = ":#{request.port}" unless [80, 443].include?(request.port)
   redirect_to "#{request.protocol}#{FQDN}#{port}#{request.path}", status: :moved_permanently
  end
end

class ApplicationController < ActionController::Base
  before_action :configure_permitted_parameters, if: :devise_controller?
  
  before_action :authenticate_user!
  before_action :store_current_location, :unless => :devise_controller?
  
  def store_current_location
    store_location_for(:user, request.url) unless request.xhr?
  end

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:name, :mobile])
    devise_parameter_sanitizer.permit(:account_update, keys: [:name, :mobile])
  end
end

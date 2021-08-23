class ApplicationController < ActionController::Base
  def after_sign_in_path_for(resource)
    communities_path(resource)
  end
  before_action :configure_permitted_parameters, if: :devise_controller?
  # protected
 def configure_permitted_parameters
   devise_parameter_sanitizer.permit(:sign_up, keys: [:name, :image, :image_cache, :description])
   devise_parameter_sanitizer.permit(:account_update, keys: [:name, :image, :image_cache, :description])
 end



end

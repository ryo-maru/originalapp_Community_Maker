class ApplicationController < ActionController::Base
  def after_sign_in_path_for(resource)
    communities_path(resource)
  end
  before_action :configure_permitted_parameters, if: :devise_controller?

 def configure_permitted_parameters
   devise_parameter_sanitizer.permit(:sign_up, keys: [:name, :image, :image_cache, :description]) # 新規登録時(sign_up時)にnameというキーのパラメーターを追加で許可する
   added_attrs = [ :email, :name, :password, :password_confirmation, :image, :image_cache, :description  ]
 end



end

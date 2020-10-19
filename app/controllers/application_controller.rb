class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :configure_permitted_parameters, if: :devise_controller? 


  private

    def configure_permitted_parameters
      devise_parameter_sanitizer.permit(:sign_up, keys: [:email, :name, :uniform, :position, :phone, :history, :address, :self_introduction])
      devise_parameter_sanitizer.permit(:account_update, keys: [:name, :email, :uniform, :position, :phone, :history, :address, :self_introduction])
    end

    # paramsハッシュからユーザーを取得します。
    def set_user
      @user = User.find(params[:id])
    end

end

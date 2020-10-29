class UsersController < ApplicationController
  before_action :set_user, only: [:destroy]
  before_action :authenticate_user!, only: [ :index, :destroy]
  before_action :admin_user, only: [:destroy]

  def index
    @users = User.paginate(page: params[:page])
  end

  def destroy
    @user.destroy
    flash[:success] = "#{@user.name}のデータを削除しました。"
    redirect_to users_url
  end

  private

    def basic_info_params
      params.require(:user).permit(:uniform, :position, :phone, :history)
    end

end

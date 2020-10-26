class UsersController < ApplicationController
  before_action :set_user, only: [ :edit, :update, :destroy, :edit_basic_info, :update_basic_info]

  def index
    @users = User.paginate(page: params[:page])
  end

  def show
  end

  def edit
  end

  def update_basic_info
    if @user.update_attributes(basic_info_params)
      flash[:success] = "#{@user.name}の基本情報を更新しました。"
    else
      flash[:danger] = "#{@user.name}の更新は失敗しました。"
    end
    redirect_to users_url
  end

  def destroy
    @user.destroy
    flash[:success] = "#{@user.name}のデータを削除しました。"
    redirect_to users_url
  end
  
  def edit_basic_info
  end

  def update_basic_info
  end

  private

    def basic_info_params
      params.require(:user).permit(:uniform, :position, :phone, :history)
    end

end

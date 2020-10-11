class UsersController < ApplicationController
  before_action :set_user, only: [:destroy, :edit_basic_info, :update_basic_info]

  def index
    @users = User.paginate(page: params[:page])
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

    # beforeフィルター

    # paramsハッシュからユーザーを取得します。
    def set_user
      @user = User.find(params[:id])
    end
end

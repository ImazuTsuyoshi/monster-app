class UsersController < ApplicationController
  before_action :set_user, only: [:show, :edit, :destroy]
  before_action :authenticate_user!, only: [:index, :index_run, :index_information]
  before_action :admin_user, only: [:edit, :destroy, :index_information]
  

  def index
    @users = User.paginate(page: params[:page])
  end

  def index_member
  end 

  def index_run
    @users = User.all
  end

  def index_information
    @users = User.paginate(page: params[:page])
  end

  def show
  end

  def edit 
  end  

  def destroy
    @user.destroy
    flash[:success] = "#{@user.name}のデータを削除しました。"
    redirect_to users_url
  end

  def update
    @user = User.find(params[:id])
    if @user.update_attributes(user_params)
      flash[:success] = "選手データを更新しました。"
      redirect_to users_index_run_url
    else
      render :edit      
    end
  end


  private

  def user_params
    params.require(:user).permit(:run, :rb, :singl, :two, :three, :characteristic)
  end

end

class UsersController < ApplicationController
  before_action :set_user, only: [:show, :destroy]
  before_action :authenticate_user!, only: [:index, :destroy]
  before_action :admin_user, only: [:destroy]

  def index
    @users = User.paginate(page: params[:page])
  end

  def index_member
  end 
  
  def index_contact
  end

  def show
  end

  def destroy
    @user.destroy
    flash[:success] = "#{@user.name}のデータを削除しました。"
    redirect_to users_url
  end

  private

    def zipedit
      params.require(:user).permit(:postcode, :prefecture_name, :address_city, :address_street, :address_building)
    end
    

end

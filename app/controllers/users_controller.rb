class UsersController < ApplicationController
  def index
    @users = User.all
  end
  
  def new
    @user = User.new
  end

  def create
    User.create(user_params)
    redirect_to :action => :index
  end

  private

  def user_params
    params.require(:user).permit(:image)
  end
end

class UsersController < ApplicationController

  def index
    @users = User.all
    redirect_to root_path
  end

  def new
    @user = User.new
  end

  def create
    @user = User.find_or_create_by(user_params)

    if @user.save
      flash[:notice] = "#{@user.email} was added to the subscription list!"
    else
      flash[:error] = "#{@user.email} was NOT added to the subscription list."
    end

    redirect_to root_path
  end

  private
    def set_user
      @user = User.find(params[:id])
    end

    def user_params
      params.require(:user).permit(:email)
    end
end

class UsersController < ApplicationController

  def index
    @users = User.all
    redirect_to root_path
  end

  # def show
  #   @user = User.where(email: params[:email])
  # end

  def new
    @user = User.new
  end

  def create
    @user = User.create(user_params)

    if @user.save
      flash[:notice] = "#{@user.email} was added to the subscription list!"
      # Notifier.welcome(@user).deliver_now
    else
      if @user.errors.added? :email, :taken
        flash[:notice] = "#{@user.email} is already on the subscription list."
      elsif @user.errors.added? :email, :blank
        flash[:error] = "The email submitted was blank."
      else
        flash[:error] = "#{@user.email} was NOT added to the subscription list."
      end
    end

    redirect_to root_path
  end

  # def destroy
  #   @user = User.where(email: params[:email]).destroy
  #   redirect_to root_path
  # end

  private

    def user_params
      params.require(:user).permit(:email)
    end
    
end

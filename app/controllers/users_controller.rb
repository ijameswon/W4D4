class UsersController < ApplicationController

  def new
    @user = User.new
    render :new
  end

  def show
    render :show
  end

  def create
    @user = User.create(user_params)

    if @user.save
      login_user!(@user) 
      redirect_to root_url
    else
      flash[:errors] = 'Invalid email/password'
      render :newx
    end
  end

  private

  def user_params
    params.require(:user).permit(:email, :password)
  end

end

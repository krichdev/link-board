class UsersController < ApplicationController
  
  def new
    
  end

  def create
    user = User.create(user_params)
    if user.id
      session[:user_id] = user.id
      redirect_to root_path
    else
      redirect_to signup_path
    end
  end

  private

  def user_params
    params.require(:user).permit(:name, :email, :password)
  end

end

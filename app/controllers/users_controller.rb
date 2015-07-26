class UsersController < ApplicationController
  
  attr_accessor :password, :password_confirmation
  
  def new
    unless params['user']
      @user = User.new
    else
      create
    end
  end
  
  def create
    
    
      @user = User.new(user_params)
      
      if @user.save
        flash[:success] = "Account successfully created!"
        log_in(@user)
        redirect_to home_path
      else
        redirect_to signup_path
      end
    
  end
  
  
  private
  
  def user_params
    params.require(:user).permit(:name, :email, :password, :password_confirmation)
  end
  
  def valid_password
    params['password'] == params['password_confirmation']
  end
  
end

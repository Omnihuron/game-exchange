class SessionsController < ApplicationController
  def new
    if params['session']
      create
    end
  end
  
  def create
    user = User.find_by(email: params[:session][:email])
    if user && user.authenticate(params[:session][:password])

      log_in user
      flash[:default] = "Welcome back, #{user.name}!"
      if params[:session][:remember_me] == '1'
        remember user
      else
        forget user
      end
      redirect_back_or home_path
     
    else
      flash.now[:alert] = 'Invalid email/password combination'
      render 'new'
    end
  end
  
  
  def destroy
    log_out if logged_in?
    
    redirect_to home_path
  end
  
end
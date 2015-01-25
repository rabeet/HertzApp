class SessionsController < ApplicationController
  def new
    if logged_in?
      user = User.find(session[:id])
      redirect_to user
    end
  end
  
  def create
    user = User.find_by(email: params[:session][:email].downcase)
    if user && user.authenticate(params[:session][:password])
      flash.now[:success] = 'Success!'
      log_in user
      redirect_to user
    else
      # Error message
      redirect_to login_url, :alert => "Invalid email/password combination"
    end
  end
  
  def destroy
    session[:user_id] = nil
    redirect_to login_url, :notice => "Logged Out"
  end
end
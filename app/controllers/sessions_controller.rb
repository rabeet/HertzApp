class SessionsController < ApplicationController
  def new
    if logged_in?
      user = User.find(session[:id])
      redirect_to user
    end
  end
  
  def create
    render 'new'
  end
end
class SessionsController < ApplicationController

  def new
  end

  def create
    if auth = env["omniauth.auth"]
      user = User.from_omniauth auth
      session[:user_id] = user.id
      redirect_to beers_url, :notice => 'logged in!'
    else
      user = User.find_by_email(params[:email])
      if user && user.authenticate(params[:password])
        session[:user_id] = user.id
        redirect_to root_url, :notice => 'logged in!'
      else
        redirect_to root_url, :alert => 'authentication failed!'
=begin
        flash.now.alert 'authentication failed!'
        render 'new'
=end
      end
    end

  end

  def destroy
    session[:user_id] = nil
    redirect_to root_url, :alert => 'logged out!'
  end


end

class SessionsController < ApplicationController
  
  def destroy
    session.clear
    redirect_to '/'
  end

  def create
    user = User.find_by(username: params[:user][:username])
    if user && user.authenticate(params[:user][:password])
      session[:user_id] = user.id
      redirect_to '/'
    else
      flash[:message] = "Incorrect login info"
      redirect_to "/login"
    end
  end

  def google
    # find or create a user using attr from #auth
    @user = User.find_or_create_by(email: auth[:info][:email]) do |user|
      user.password = SecureRandom.hex(10)
    end

    if @user.save
      session[:user_id] = @user.id
      redirect_to '/'
    else
      redirect_to '/'
    end
  end

  private

  def auth
    request.env['omniauth.auth']
  end
end

class SessionsController < ApplicationController
  def new
    if current_user
      redirect_to snips_index_path
    end
  end

  def create
    user = User.find_by_email(params[:email])

    if user && user.authenticate(params[:password])
      session[:user_id] = user.id
      redirect_to snips_index_path
    else
      flash.now.alert = "Email or password is invalid"
      render "new"
    end

  end

  def destroy
    session[:user_id] = nil
    redirect_to root_url, notice: "Logged out"
  end

end

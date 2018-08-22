class SessionsController < ApplicationController
  def new
  end

  def create
    user = User.find_by(username: params[:username])

    if user
      session[:signed_in_user_id] = user.id
      redirect_to recipes_path
    end
  end

  def destroy
    session[:signed_in_user_id] = nil
    redirect_to login_path
  end

end

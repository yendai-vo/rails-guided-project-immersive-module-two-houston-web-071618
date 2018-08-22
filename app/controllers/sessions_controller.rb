class SessionsController < ApplicationController
  def new
  end

  def create
    user = User.find_by(username: params[:username])

    if user
      session[:signed_in_user_id] = user.id
      redirect_to new_session_path
    end
  end
end

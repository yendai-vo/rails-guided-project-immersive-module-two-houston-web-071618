# frozen_string_literal: true

class UsersController < ApplicationController
  before_action :set_user, only: %i[show edit update destroy]
  helper_method :current_user?

  def index
    @users = User.all
  end

  def show
    @user = User.find(params[:id])
  end

  def new
    @user = User.new
  end

  def edit
  set_user
  end

  def create
    user = User.create(user_params)

    if !user.valid?
      flash[:error] = user.errors.full_messages[0]
      redirect_to signup_path
    else
      redirect_to users_path
    end
  end

  def update
    set_user.update(user_params)

    redirect_to user_path(@user)
  end

  def destroy
    @user.destroy
  end

  def current_user?
    @user.id == session[:signed_in_user_id]
  end

  private

  def set_user
    @user = User.find(params[:id])
  end

  def user_params
    params.require(:user).permit(:id, :name, :username, :email, :password, :password_confirmation, :location, :img_url)
  end
end

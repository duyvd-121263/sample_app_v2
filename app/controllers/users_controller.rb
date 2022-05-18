class UsersController < ApplicationController
  before_action :find_user, only: [:show]

  def show; end

  def new
    @user = User.new
  end

  def create
    @user = User.new user_params
    if @user.save
      log_in @user
      flash[:success] = t ".flash"
      redirect_to @user
    else
      flash[:error] = @user.errors.full_messages
      render :new
    end
  end

  private

  def user_params
    params.require(:user)
          .permit(:name, :email,:password, :password_confirmation)
  end

  def find_user
    @user = User.find_by id: params[:id]
    redirect_to root_path unless @user
  end
end

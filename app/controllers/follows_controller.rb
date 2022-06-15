class FollowsController < ApplicationController
  before_action :find_user, only: %i(following followers)
  before_action :logged_in_user, only: %i(following followers)

  def following
    @title = t ".following"
    @pagy, @users = pagy @user.following
    render :show_follow
  end

  def followers
    @title = t ".followers"
    @pagy, @users = pagy @user.followers
    render :show_follow
  end

  private

  def find_user
    @user = User.find_by id: params[:id]
    redirect_to root_path unless @user
  end
end

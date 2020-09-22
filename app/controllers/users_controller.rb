class UsersController < ApplicationController
  before_action :authenticate_user!, only: [:following, :followers]

  def show
    @user = User.find(params[:id])
    @posts = @user.posts.page(params[:page]).per(10)
  end

  def index
    @users = User.page(params[:page]).per(10)
  end

  def following
    @title = "フォロー中"
    @user  = User.find(params[:id])
    @users = @user.following.page(params[:page]).per(10)
    render 'show_follow'
  end

  def followers
    @title = "フォロワー"
    @user  = User.find(params[:id])
    @users = @user.followers.page(params[:page]).per(10)
    render 'show_follow'
  end
end

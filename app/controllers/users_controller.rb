class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
    @posts = @user.posts.page(params[:page]).per(20)
  end

  def index
    @users = User.page(params[:page]).per(20)
  end
end

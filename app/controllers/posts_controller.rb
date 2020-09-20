class PostsController < ApplicationController
  before_action :authenticate_user!, only: [:new, :create, :destroy]
  before_action :correct_user, only: [:destroy]

  def show
    @post = Post.find(params[:id])
  end

  def new
    @post = current_user.posts.build if user_signed_in?
  end

  def create
    @post = current_user.posts.build(post_params)
    if @post.save
      flash[:notice] = "投稿されました"
      redirect_to post_url(@post)
    else
      render 'posts/new'
    end
  end

  def destroy
    @post.destroy
    flash[:notice] = "投稿は削除されました"
    redirect_to user_url(@post.user)
  end

  private

  def post_params
    params.require(:post).permit(:title, :content)
  end

  def correct_user
    @post = current_user.posts.find_by(id: params[:id])
    redirect_to root_url if @post.nil?
  end
end

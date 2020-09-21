class LikesController < ApplicationController
  def create
    @post = Post.find(params[:post_id])
    unless @post.iine?(current_user)
      @post.iine(current_user)
      @post.create_notification_like!(current_user)
      respond_to do |format|
        format.html { redirect_to request.referrer || root_url }
        format.js
      end
    end
  end

  def destroy
    @post = Post.find(params[:post_id])
    unless @post.iine?(current_user)
      @post.iine(current_user)
      respond_to do |format|
        format.html { redirect_to request.referrer || root_url }
        format.js
      end
    end
  end

  def index
    @posts = current_user.liked_posts.page(params[:page]).per(10)
  end
end

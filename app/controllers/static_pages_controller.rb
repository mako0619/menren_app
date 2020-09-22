class StaticPagesController < ApplicationController
  def home
    @user = User.new
    if user_signed_in?
      @feed_items = current_user.feed.page(params[:page]).per(10)
    end
    @posts = Post.all.page(params[:page]).per(10)
  end
end

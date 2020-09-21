class CommentsController < ApplicationController
  def create
    @comment = current_user.comments.build(comment_params)
    if @comment.save
      respond_to do |format|
        format.html do
          flash[:success] = "コメントを投稿しました。"
          redirect_to post_path(@comment.post)
        end
        format.js
      end
    else
      respond_to do |format|
        format.html do
          @post = @comment.post
          render "posts/show"
        end
        format.js do
          render js: "alert('#{@comment.errors.full_messages}')"
        end
      end
    end
  end

  def destroy
    @comment = Comment.find_by(id: params[:id])
    if @comment&.user_id == current_user.id
      @comment.destroy
      respond_to do |format|
        format.html { redirect_to post_path(@comment.post) }
        format.js
      end
    else
      redirect_to root_path
    end
  end

  private

  def comment_params
    params.require(:comment).permit(:content, :post_id, :user_id)
  end
end

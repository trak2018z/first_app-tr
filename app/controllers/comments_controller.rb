class CommentsController < ApplicationController

  def create
    @post =   Post.find(params[:post_id])
    @comment = @post.comments.build(comment_params)
    @comment.user = current_user
    @comment.save

    redirect_to posts_url

  end

  def destroy
    @post = Post.find(params[:post_id])
    @comment = @post.comments.find(params[:id]).destroy

    redirect_to posts_url
  end

  private

  def comment_params
    params.require(:comment).permit(:content)
  end
end

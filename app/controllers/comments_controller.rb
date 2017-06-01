class CommentsController < ApplicationController
  before_action :route, only: [:create, :destroy]

  def create
    @comment = Comment.new(comment_params)
    @comment.save
    redirect_to @route
  end

  def destroy
    @comment = Comment.find(params[:id])
    @comment.destroy

    redirect_to @route
  end

  private
  def comment_params
    params.require(:comment).permit(:user_id, :commentable_id,
                                    :commentable_type, :body)
  end

  def route
    @route = RedirectionService.new.route
  end
end

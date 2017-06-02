class CommentsController < ApplicationController
  before_action :route, only: [:create, :destroy]

  def create
    @comment = Comment.new(comment_params)
    @comment.save
    respond_to do |format|
      format.html {redirect_to @route}
      format.js
    end
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
    @route = RedirectionService.new(session).route
  end
end

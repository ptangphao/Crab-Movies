class CommentsController < ApplicationController
  def new
    @comment = Comment.new
  end

  def create
    @comment = Comment.new(comment_params)

    if @comment.save
      redirect_to @comment.movie
    else
      render 'new'
    end
  end

  def destroy
    @comment = Comment.find(params[:id])
    @movie = @comment.movie
    @comment.destroy

    redirect_to @movie
  end

  private
  def comment_params
    params.require(:comment).permit(:user_id, :commentable_id,
                                    :commentable_type, :body)
  end
end

class ReviewsController < ApplicationController
  def new
    @review = Review.new
  end

  def create
    @review = Review.new(review_params)

    if @review.save
      redirect_to @review.movie
    else
      render 'new'
    end
  end

  def destroy
    @review = Review.find(params[:id])
    @movie = @review.movie
    @review.destroy

    redirect_to @movie
  end

  private
  def review_params
    params.require(:review).permit(:user_id, :reviewable_id,
                                   :reviewable_type, :body)
  end
end

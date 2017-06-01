class ReviewsController < ApplicationController
  before_action :route, only: [:create, :destroy]

  def create
    @review = Review.create(review_params)

    redirect_to @route
  end

  def destroy
    @review = Review.find(params[:id])
    @review.destroy

    redirect_to @route
  end

  private
  def review_params
    params.require(:review).permit(:user_id, :reviewable_id,
                                   :reviewable_type, :body)
  end

  def route
    @route = RedirectionService.new(session).route
  end
end

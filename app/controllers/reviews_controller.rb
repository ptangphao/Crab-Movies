class ReviewsController < ApplicationController
  before_action :route, only: [:create, :destroy]

  def create
    @review = Review.new(review_params)
    @review.save
    respond_to do |format|
      format.html {redirect_to @route}
      format.js
    end
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

class ReviewsController < ApplicationController
  before_action :route, only: [:create, :destroy]

  def new
    @review = Review.new
  end

  def create
    @review = Review.new(review_params)

    if @review.save
      redirect_to @route
    else
      render 'new'
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
    @route = RedirectionService.new.route
  end
end

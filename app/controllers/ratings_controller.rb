class RatingsController < ApplicationController
  def create
    @rating = Rating.create(rating_params)
    redirect_to RedirectionService.new(session).route
  end

  private
  def rating_params
    params.require(:rating).permit(:user_id, :rateable_id,
                                   :rateable_type, :rating)
  end
end

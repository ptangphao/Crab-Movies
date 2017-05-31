class RatingsController < ApplicationController
  def create
    @rating = Rating.new(rating_params)
    redirect_to RedirectionService.new.route
  end
end

class MoviesController < ApplicationController
  def show
    @movie = Movie.find(params[:id])
    session[:page_type] = "Movie"
    session[:page_id] = @movie.id
  end

end

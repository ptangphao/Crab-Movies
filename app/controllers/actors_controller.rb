class ActorsController < ApplicationController
  def index
    @actors = Actor.all
  end

  def show
    @actor = Actor.find(params[:id])
    session[:page_type] = "Actor"
    session[:page_id] = @actor.id
  end
end

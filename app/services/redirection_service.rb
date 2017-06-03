class RedirectionService
  def initialize(session)
    @type = session[:page_type]
    @id = session[:page_id]
  end

  def route
    @type == "Movie" ? Movie.find(@id) : Actor.find(@id)
  end
end

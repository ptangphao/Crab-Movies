require 'rails_helper'

describe MoviesController do
  let!(:movie) {Movie.create!({
              title: "The Dark Knight",
              director: "Christopher Nolan",
              writer: "Jonathan Nolan",
              year: "2008",
              poster_url: "https://images-na.ssl-images-amazon.com/images/M/MV5BMTMxNTMwODM0NF5BMl5BanBnXkFtZTcwODAyMTk2Mw@@._V1_.jpg",
              category_id: 1
              })}
  describe "get #show" do
    it "responds with a status code of 200" do
      get :show, {id: movie.id}
      expect(response).to have_http_status 200
    end


  end
end

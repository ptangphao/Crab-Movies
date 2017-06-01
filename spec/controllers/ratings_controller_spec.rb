require 'rails_helper'

describe RatingsController do
  let!(:movie) {Movie.create!({
              title: "The Dark Knight",
              director: "Christopher Nolan",
              writer: "Jonathan Nolan",
              year: "2008",
              poster_url: "https://images-na.ssl-images-amazon.com/images/M/MV5BMTMxNTMwODM0NF5BMl5BanBnXkFtZTcwODAyMTk2Mw@@._V1_.jpg",
              category_id: 1
              })}

  describe 'post#create' do
    it "creates new rating" do
      post(:create, { rating: {user_id: 1,
                                rateable_id: movie.id,
                                rateable_type: "movie",
                                rating: 1}},
                                {page_type: "Movie", page_id: movie.id})
      expect(response).to have_http_status 302
    end
  end
end

require 'rails_helper'

describe CommentsController do
  let!(:movie) {Movie.create!({
              title: "The Dark Knight",
              director: "Christopher Nolan",
              writer: "Jonathan Nolan",
              year: "2008",
              poster_url: "https://images-na.ssl-images-amazon.com/images/M/MV5BMTMxNTMwODM0NF5BMl5BanBnXkFtZTcwODAyMTk2Mw@@._V1_.jpg",
              category_id: 1
              })}
  describe 'post #create' do
    it "responds with a status code 302 when valid params are passed" do
      post(:create, { comment: {user_id: 1,
                                commentable_id: movie.id,
                                commentable_type: "Movie",
                                body: "laksjdf;alsdjf;asljkdfl;"}},
                    {page_type: "Movie", page_id: movie.id})
      expect(response).to have_http_status 302
    end
  end
  describe 'DELETE #DESTROY' do

  end
end

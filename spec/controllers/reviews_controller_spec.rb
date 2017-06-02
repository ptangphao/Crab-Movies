require 'rails_helper'

describe ReviewsController do
  let!(:movie) {Movie.create!({
              title: "The Dark Knight",
              director: "Christopher Nolan",
              writer: "Jonathan Nolan",
              year: "2008",
              poster_url: "https://images-na.ssl-images-amazon.com/images/M/MV5BMTMxNTMwODM0NF5BMl5BanBnXkFtZTcwODAyMTk2Mw@@._V1_.jpg",
              category_id: 1
              })}

  let!(:review) {Review.create!({
              user_id: 1,
              reviewable_id: movie.id,
              reviewable_type: "Movie",
              body: "This movie is worth watching."
              })}

  # describe 'post#create' do
  #   it "responds with a status code 302 when valid params are passed" do
  #     post(:create, { new_movie_review: {user_id: 1,
  #                               reviewable_id: movie.id,
  #                               commentable_type: "Movie",
  #                               body: "Action sequel"}})
  #     expect(response).to have_http_status 302
  #   end
  # end

  # describe 'DELETE #destroy' do
  #   it "responds with a status code 302" do
  #     delete(:destroy, { id: comment.id},
  #                   {page_type: "Movie", page_id: movie.id})
  #     expect(response).to have_http_status 302
  #   end
  # end
end

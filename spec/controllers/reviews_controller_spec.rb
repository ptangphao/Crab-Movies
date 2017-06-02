require 'rails_helper'

describe ReviewsController do
  let (:movie) {Movie.create({
              title: "The Dark Knight",
              director: "Christopher Nolan",
              writer: "Jonathan Nolan",
              year: "2008",
              poster_url: "https://images-na.ssl-images-amazon.com/images/M/MV5BMTMxNTMwODM0NF5BMl5BanBnXkFtZTcwODAyMTk2Mw@@._V1_.jpg",
              category_id: 1
              })}

  let (:review) {Review.create({
              user_id: 1,
              reviewable_id: movie.id,
              reviewable_type: "Movie",
              body: "This movie is worth watching."
              })}

  describe "validations" do
    it "should test for a review to have a user who wrote it" do 
      review.user_id = nil
      expect(review).to_not be_valid
    end

    it "should test for a review to have a polyomorphic reviewable_id" do 
      review.reviewable_id = nil
      expect(review).to_not be_valid
    end

    it "should not allow reviewable_id's to be blank" do 
      review.reviewable_type = nil
      expect(review).to_not be_valid
    end

    it "should not permit body's to be blank" do
      review.body = nil
      expect(review).to_not be_valid
    end
  end
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

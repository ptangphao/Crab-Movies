# require 'rails_helper'

# describe RatingsController do
#   let(:movie) {Movie.first}
#   let(:rating) {Rating.first}
#   let(:movie) {Movie.first}

#  describe 'GET #new' do
#   it 'responds with status code 200' do
#     get :new, params: { movie_id: movie.id }
#     expect(response).to have_http_status 200
#   end

#   it 'assigns the correct movie to @movie' do
#     get :new, params: { movie_id: movie.id }
#     expect(assigns(:movie)).to eq movie
#   end

#   it 'assigns a new rating to @rating' do
#     get :new, params: { movie_id: movie.id }
#     expect(assigns(:rating)).to be_a_new Rating
#   end

#   it 'renders the new template' do
#     get :new, params: { movie_id: movie.id }
#     expect(response).to render_template(:new)
#   end
# end
  # describe 'post#create' do
  #   it "creates new rating" do
  #     post(:create, { rating: {user_id: 1,
  #                               rateable_id: movie.id,
  #                               rateable_type: "movie",
  #                               rating: 1}},
  #                               {page_type: "Movie", page_id: movie.id})
  #     expect(response).to have_http_status 302
  #   end
  # end
# end

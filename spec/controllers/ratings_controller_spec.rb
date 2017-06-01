require 'rails_helper'

describe RatingsController do
  let!(:rating) { Rating.create!(user_id: 1,
                                  rateable_id: 1,
                                  rateable_type: 'movie',
                                  rating: 5) }


  describe "GET #new" do
    it "responds with status code 200" do
      get :new
    expect(response).to have_http_status 200
    end
    it "assigns a new rating to @rating" do
      get :new
      expect(assigns(:rating)).to be_a_new Rating
    end

    it "renders the :new template" do
      get :new
    expect(response).to render_template(:new)
    end
  end



end

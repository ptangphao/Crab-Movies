require 'rails_helper'

describe ActorsController do
  describe "Get #index" do
    it "responds with a status code of 200" do
      get :index
      expect(response).to have_http_status 200
    end

    it "assigns all actors as @actors" do
      get :index
      expect(assigns(:actors)).to eq(Actor.all)
    end
  end
end

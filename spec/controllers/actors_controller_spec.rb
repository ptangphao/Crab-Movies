require 'rails_helper'

describe ActorsController do
  let!(:actor) {Actor.create!({name: "Shin MinAh"})}

  describe "Get #index" do
    it "responds with a status code of 200" do
      get :index
      expect(response).to have_http_status 200
    end

    it "assigns all actors as @actors" do
      get :index
      expect(assigns(:actors)).to eq(Actor.all)
    end

    it "renders the :index template" do
      get :index
      expect(response).to render_template(:index)
    end
  end

  describe "get #show" do
    it "responds with a status code of 200" do
      get :show, {id: actor.id}
      expect(response).to have_http_status 200
    end

    it "assigns the correct actor as @actor" do
      get :show, {id: actor.id}
      expect(assigns(:actor)).to eq(actor)
    end
  end
end

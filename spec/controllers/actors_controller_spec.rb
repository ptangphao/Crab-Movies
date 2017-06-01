require 'rails_helper'

describe ActorsController do
  describe "Get #index" do
    it "responds with a status code of 200" do
      get :index
      expect(response).to have_http_status 200
    end


  end
end

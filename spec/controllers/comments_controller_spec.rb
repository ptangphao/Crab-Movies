require 'rails_helper'

describe CommentsController do
  describe 'get #new' do
    it "responds with a status code 200" do
      get :new
      expect(response).to have_http_status 200
    end
  end

end

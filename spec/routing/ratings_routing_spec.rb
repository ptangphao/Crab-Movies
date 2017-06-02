require 'rails_helper'

RSpec.describe "Routing to ratings", :type => :routing do

  describe "Routing within movies" do
    it "routes POST movies/1/ratings to ratings#create" do
      expect(post: "/movies/1/ratings").to route_to("ratings#create", movie_id: '1')
    end
  end

  describe "Routing within reviews within movies" do
    it "routes POST movies/1/reviews/1/ratings to ratings#create" do
      expect(post: "/movies/1/reviews/1/ratings").to route_to("ratings#create", movie_id: '1', review_id: '1')
    end
  end

  describe "Routing within reviews within actors" do
    it "routes POST movies/1/reviews/1/ratings to ratings#create" do
      expect(post: "/actors/1/reviews/1/ratings").to route_to("ratings#create", actor_id: '1', review_id: '1')
    end
  end
end

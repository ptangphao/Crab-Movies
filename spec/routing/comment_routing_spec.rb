require 'rails_helper'

RSpec.describe "Routing to comments", :type => :routing do

  describe "Routing within reviews within movies" do
    it "routes POST movies/1/reviews/1/comments to comments#create" do
      expect(post: "/movies/1/reviews/1/comments").to route_to("comments#create", movie_id: '1', review_id: '1')
    end

    it "routes DELETE movies/1/reviews/1/comments/1 to comments#destroy" do
      expect(delete: "/movies/1/reviews/1/comments/1").to route_to("comments#destroy", movie_id: "1", review_id: "1", id: "1")
    end
  end

  describe "Routing within reviews within actors" do
    it "routes POST movies/1/reviews/1/comments to comments#create" do
      expect(post: "/actors/1/reviews/1/comments").to route_to("comments#create", actor_id: '1', review_id: '1')
    end

    it "routes DELETE actors/1/reviews/1/comments/1 to comments#destroy" do
      expect(delete: "/actors/1/reviews/1/comments/1").to route_to("comments#destroy", actor_id: "1", review_id: "1", id: "1")
    end
  end
end

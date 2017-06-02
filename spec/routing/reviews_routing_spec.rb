require 'rails_helper'

RSpec.describe "Routing to reviews", :type => :routing do
    it "routes POST movies/1/reviews to reviews#create" do
      expect(post: "/movies/1/reviews").to route_to("reviews#create", movie_id: '1')
    end

    it "routes DELETE movies/1/reviews/1 to reviews#destroy" do
      expect(delete: "/movies/1/reviews/1").to route_to("reviews#destroy", movie_id: "1", id: "1")
    end
end

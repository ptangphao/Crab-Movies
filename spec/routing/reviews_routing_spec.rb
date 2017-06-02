require 'rails_helper'

RSpec.describe "Routing to reviews", :type => :routing do
   it "routes POST movies/reviews to reviews#create" do
      expect(:post => "movies/1/reviews").to route_to("reviews#create", movie_id: '1')
    end
end

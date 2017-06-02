# require 'rails_helper'

# RSpec.describe "Routing to comments", :type => :routing do
#   context "Routes" do
#     it "routes POST /comments to comments#create" do
#       expect(:post => "/comments").to route_to("comments#create")
#     end

#     it "routes DELETE /comments/1 to comments#destroy" do
#       expect(:delete => "/comments/1").to route_to("comments#destroy", :id => "1")
#     end
#   end
# end

require 'rails_helper'

RSpec.describe "Routing to comments", :type => :routing do
  describe "Routing within movies" do
    it "routes POST movies/1/comments to comments#create" do
      expect(post: "/movies/1/comments").to route_to("comments#create", movie_id: '1')
    end

    it "routes DELETE movies/1/comments/1 to comments#destroy" do
      expect(delete: "/movies/1/comments/1").to route_to("comments#destroy", movie_id: "1", id: "1")
    end
  end
end

require 'rails_helper'

RSpec.describe "Routing to actors", :type => :routing do
  it "routes GET /actors to actors#index" do
    expect(:get => "/actors").to route_to('actors#index')
  end

  it "routes GET /actors/1 to actors#show" do
    expect(:get => "/actors/1").to route_to('actors#show', :id => "1")
  end
end

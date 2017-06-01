require 'rails_helper'

RSpec.describe "Routing to application", :type => :routing do
  it "GET / routes to categories#index" do
    expect(:get => "/").to route_to('categories#index')
  end

end

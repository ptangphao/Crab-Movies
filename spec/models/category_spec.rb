require 'rails_helper'

describe Category do
  let (:category) {Category.new({name: "horror"})}
  it "has a name" do
    expect(category.name == "horror").to be_truthy
  end
end

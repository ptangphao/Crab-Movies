require 'rails_helper'

describe "category attributes" do
  let (:category) {Category.new({name: "earl"})}
  it "has a name" do
    expect(category.name = "earl").to be_truthy
  end
end

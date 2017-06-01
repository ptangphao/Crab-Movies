require 'rails_helper'

describe "actor attributes" do
  let (:actor) {Actor.new({name: "Tom Hanks"})}
  it "has a name" do
    expect(actor.name = "Tom Hanks").to be_truthy
  end
end

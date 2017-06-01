require 'rails_helper'

describe Actor do
  let (:actor) {Actor.new({name: "Tom Hanks"})}
  it "has a name" do
    expect(actor.name == "Tom Hanks").to be_truthy
  end

  it "should have many movies" do
    t = Actor.reflect_on_association(:movies)
    expect(t.macro == :has_many).to be_truthy
  end
end

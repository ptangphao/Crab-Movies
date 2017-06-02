require 'rails_helper'

describe Actor do
  let (:actor) {Actor.new({name: "Tom Hanks"})}
  describe "has attributes" do
    it "has a name" do
      expect(actor.name == "Tom Hanks").to be_truthy
    end
  end
  describe "has associations" do
    it { is_expected.to have_many(:movies)}
    it { is_expected.to have_many(:reviews)}
    it { is_expected.to have_many(:actor_movies)}
  end
end



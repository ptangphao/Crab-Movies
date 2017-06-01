require 'rails_helper'

describe Actor do
  let (:actor) {Actor.new({name: "Tom Hanks"})}
  describe "has attributes" do
    it "has a name" do
      expect(actor.name == "Tom Hanks").to be_truthy
    end
  end
  describe "has associations" do
    it "should have many movies" do
      t = Actor.reflect_on_association(:movies)
      expect(t.macro == :has_many).to be_truthy
    end
  end

    describe "has associations" do
      it "should have actor_movies" do
        t = Actor.reflect_on_association(:actor_movies)
        expect(t.macro == :has_many).to be_truthy
      end
    end

    describe "has associations" do
    it "should have revies" do
      t = Actor.reflect_on_association(:reviews)
      expect(t.macro == :has_many).to be_truthy
    end
  end
end

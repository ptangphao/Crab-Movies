require 'rails_helper'

describe Rating do
  let (:rating){
    Rating.new({user_id: 1,
                rateable_id: 1,
                rateable_type: "movie",
                rating: 8
      })}

  describe "has attributes" do
    it "has rating" do
      expect(rating.rating == 8).to be_truthy
    end

    it " has rateable_type" do
      expect(rating.rateable_type == "movie").to be_truthy
    end

    it " has user_id" do
      expect(rating.user_id == 1).to be_truthy
    end

    it "has rateable_id" do
      expect(rating.rateable_id == 1).to be_truthy
    end
  end


  describe "has associations" do
    it "should belong to a user" do
      t = Rating.reflect_on_association(:user)
      expect(t.macro == :belongs_to).to be_truthy
    end

    it "should belong to a user" do
      t = Rating.reflect_on_association(:rateable)
      expect(t.macro == :belongs_to).to be_truthy
    end
  end
end

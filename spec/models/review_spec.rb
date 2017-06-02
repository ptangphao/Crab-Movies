require 'rails_helper'

describe Review do
  let (:review) {
    Review.new({
      user_id: 1,
      reviewable_id: 1,
      reviewable_type: "movie",
      body: "The movie is watchable"
      })}

  describe "has attributes" do
    it "has user_id" do
      expect(review.user_id == 1).to be_truthy
    end

    it "has reviewable_id" do
      expect(review.reviewable_id == 1).to be_truthy
    end

    it "has reviewable_type" do
      expect(review.reviewable_type == "movie").to be_truthy
    end

    it "has a body" do
      expect(review.body == "The movie is watchable").to be_truthy
    end
  end


  describe "has associations" do
    it "should belong to a user" do
      t = Review.reflect_on_association(:user)
      expect(t.macro == :belongs_to).to be_truthy
    end

    it "should belong to reviewable" do
      t = Review.reflect_on_association(:reviewable)
      expect(t.macro == :belongs_to).to be_truthy
    end
  end
end

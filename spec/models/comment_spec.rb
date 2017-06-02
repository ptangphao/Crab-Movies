require 'rails_helper'

describe Comment do

  let(:comment) {
    Comment.new({
      user_id: 1,
      commentable_id: 1,
      commentable_type: "movie",
      body: "This is a very lame movie"
      })}

  describe "has attributes" do
    it "has a user_id" do
      expect(comment.user_id == 1).to be_truthy
    end

    it "has a commentable_id" do
      expect(comment.commentable_id == 1).to be_truthy
    end

    it "has a commentable_type" do
      expect(comment.commentable_type == "movie").to be_truthy
    end

    it "has a body" do
      quote = "This is a very lame movie"
      expect(comment.body == quote).to be_truthy
    end
  end

  describe "has associations" do

    it "should belong to a user" do
      t = Comment.reflect_on_association(:user)
      expect(t.macro == :belongs_to).to be_truthy
    end

    it "should belong to commentable" do
      t = Comment.reflect_on_association(:commentable)
      expect(t.macro == :belongs_to).to be_truthy
    end
  end

  describe "validates" do 
    it "the presence of a user_id" do 
      comment.user_id = nil
      expect(comment).to_not be_valid
    end

    it "the presence of a commentable_id" do 
      comment.commentable_id = nil
      expect(comment).to_not be_valid
    end

    it "the presence of a commentable_type" do 
      comment.commentable_type = nil
      expect(comment).to_not be_valid
    end

    it "the presence of a body" do 
      comment.body = nil
      expect(comment).to_not be_valid
    end
  end
end

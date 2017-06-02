require 'rails_helper'

describe Category do
  let (:category) {Category.new({name: "horror"})}
  describe "has attributes" do
    it "has a name" do
      expect(category.name == "horror").to be_truthy
    end
  end
  describe "has associations" do
    it "should belong to a category" do
      t = Category.reflect_on_association(:movies)
      expect(t.macro == :has_many).to be_truthy
    end
  end

  describe 'validations' do
    it 'is valid with valid attributes' do
      expect(category).to be_valid
    end

    it 'is not valid without a name' do
      category.name = "gina ben"
      expect(category).to be_valid
    end
  end
end




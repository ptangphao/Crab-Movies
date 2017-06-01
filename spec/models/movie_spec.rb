require 'rails_helper'

describe Movie do
  let (:category){
    Category.new({name: "horror"})
  }
  let (:movie) {
    Movie.new({
              title: "The Dark Knight",
              director: "Christopher Nolan",
              writer: "Jonathan Nolan",
              year: "2008",
              poster_url: "https://images-na.ssl-images-amazon.com/images/M/MV5BMTMxNTMwODM0NF5BMl5BanBnXkFtZTcwODAyMTk2Mw@@._V1_.jpg",
              category_id: category.id
              })}
  describe "has attributes" do
    it "has a title" do
      expect(movie.title == "The Dark Knight").to be_truthy
    end

    it "has a writer" do
      expect(movie.writer == "Jonathan Nolan").to be_truthy
    end

    it "has a director" do
      expect(movie.director == "Christopher Nolan").to be_truthy
    end

    it "has a year" do
      expect(movie.year == 2008).to be_truthy
    end

    it "has a poster_url" do
      expect(movie.poster_url == "https://images-na.ssl-images-amazon.com/images/M/MV5BMTMxNTMwODM0NF5BMl5BanBnXkFtZTcwODAyMTk2Mw@@._V1_.jpg").to be_truthy
    end
  end
  describe "has associations" do
    it "should belong to a category" do
      t = Movie.reflect_on_association(:categories)
      expect(t.macro == :belongs_to).to be_truthy
    end

    it "should have many actors" do
      t = Movie.reflect_on_association(:actors)
      expect(t.macro == :has_many).to be_truthy
    end

    it "should have many comments" do
      t = Movie.reflect_on_association(:comments)
      expect(t.macro == :has_many).to be_truthy
    end

    it "should have many reviews" do
      t = Movie.reflect_on_association(:reviews)
      expect(t.macro == :has_many).to be_truthy
    end

    it "should have many actor_movies" do
      t = Movie.reflect_on_association(:actor_movies)
      expect(t.macro == :has_many).to be_truthy
    end
  end
end

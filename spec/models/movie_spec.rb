require 'rails_helper'

describe Movie do
  let (:category){
    Category.new({name: "horror"})
  }
  let (:movie) {
    Movie.create({
              title: "The Dark Knight",
              director: "Christopher Nolan",
              writer: "Jonathan Nolan",
              year: "2008",
              poster_url: "https://images-na.ssl-images-amazon.com/images/M/MV5BMTMxNTMwODM0NF5BMl5BanBnXkFtZTcwODAyMTk2Mw@@._V1_.jpg",
              trailer_url: "https://images-na.ssl-images-amazon.com/images/M/MV5BMTMxNTMwODM0NF5BMl5BanBnXkFtZTcwODAyMTk2Mw@@._V1_.jpg",
              trailer_photo_url: "https://images-na.ssl-images-amazon.com/images/M/MV5BMTMxNTMwODM0NF5BMl5BanBnXkFtZTcwODAyMTk2Mw@@._V1_.jpg",
              plot: "scary shit happens",
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
    it { is_expected.to have_many(:ratings)}
    it { is_expected.to have_many(:actor_movies)}
  end

  describe "has validations" do
    it 'is not valid without a title' do
      movie.title = nil
      expect(movie).to_not be_valid
    end


    it 'is not valid without a writer' do
      movie.writer = nil
      expect(movie).to_not be_valid
    end

    it 'is not valid without a director' do
      movie.director = nil
      expect(movie).to_not be_valid
    end

    it 'is not valid without a year' do
      movie.year = nil
      expect(movie).to_not be_valid
    end

    it 'is not valid without a poster_url' do
      movie.poster_url = nil
      expect(movie).to_not be_valid
    end

    it 'is not valid without a category_id' do
      movie.category_id = nil
      expect(movie).to_not be_valid
    end
  end
end

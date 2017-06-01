require 'rails_helper'

describe "movie attributes" do
  let (:movie) {
    Movie.new({title: "The Dark Knight",
               director: "Christopher Nolan",
               writer: "Jonathan Nolan",
               year: "2008",
               poster_url: "https://images-na.ssl-images-amazon.com/images/M/MV5BMTMxNTMwODM0NF5BMl5BanBnXkFtZTcwODAyMTk2Mw@@._V1_.jpg"
              })}
  it "has a title" do
    expect(movie.title = "The Dark Knight").to be_truthy
  end
  it "has a writer" do
    expect(movie.writer = "Christopher Nolan").to be_truthy
  end
  it "has a director" do
    expect(movie.director = "Jonathan Nolan").to be_truthy
  end
  it "has a year" do
    expect(movie.year = "2008").to be_truthy
  end
  it "has a poster_url" do
    expect(movie.poster_url = "https://images-na.ssl-images-amazon.com/images/M/MV5BMTMxNTMwODM0NF5BMl5BanBnXkFtZTcwODAyMTk2Mw@@._V1_.jpg").to be_truthy
  end
end

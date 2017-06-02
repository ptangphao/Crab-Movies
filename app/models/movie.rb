class Movie < ActiveRecord::Base
  has_many :actor_movies
  has_many :actors, through: :actor_movies
  has_many :ratings, as: :rateable
  has_many :comments, as: :commentable
  has_many :reviews, as: :reviewable
  belongs_to :categories

  validates_presence_of :title, :writer, :director, :year, :poster_url, :category_id, :trailer_url, :plot, :trailer_photo_url
end

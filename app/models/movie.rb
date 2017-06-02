class Movie < ActiveRecord::Base
  has_many :actor_movies
  has_many :actors, through: :actor_movies
  has_many :ratings, as: :rateable
  has_many :comments, as: :commentable
  has_many :reviews, as: :reviewable
  belongs_to :categories
end

class Actor < ActiveRecord::Base
  has_many :actor_movies
  has_many :movies, through: :actor_movies
  has_many :reviews, as: :reviewable

  validates_presence_of :name
end

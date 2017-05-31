class Actor < ActiveRecord::Base
  has_many :movies, through: :actors_movies
  belongs_to
end

class ActorMovie < ActiveRecord::Base
  belongs_to :actor
  belongs_to :movie

  validates_presence_of :actor_id, :movie_id
end

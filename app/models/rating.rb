class Rating < ActiveRecord::Base
  belongs_to :user
  belongs_to :rateable, polymorphic: :true

  validates_presence_of :user_id, :rateable_id, :rateable_type, :rating
end

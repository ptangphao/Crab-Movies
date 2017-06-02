module ApplicationHelper
  def rating(object)
    total = object.ratings.inject(0) {|sum, rating| sum += rating.rating}
    total_stars = total / object.ratings.length
    stars = ""
    total_stars.times {stars += "☆"}
    stars
  end
end

module ApplicationHelper
  def rating(object)
    total = object.ratings.inject(0) {|sum, rating| sum += rating.rating}
    ratings_num = object.ratings.length
    ratings_num > 0 ? total_stars = total / object.ratings.length : total_stars = 0
    stars = ""
    total_stars.times {stars += "☆"}
    stars
  end
end

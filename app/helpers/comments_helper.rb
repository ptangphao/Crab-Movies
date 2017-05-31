helpers do
  def find_movie(comment)
    if comment.commentable_type == "Movie"
      Movie.find(comment.commentable_id)
    else
      Review.find(comment.commentable_id).movie
    end
  end
end

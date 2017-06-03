# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


# User.create(email: 'botilko@yahoo.com', password: 'bob')



# Random stuff from Patrick

imdb = ImdbParty::Imdb.new(:anonymize => true)
# anonymous requests to prevent IP ban

#The next one is the production version, it makes 250 API calls
top_250 = imdb.top_250.map{|movie| movie[:imdb_id]} #gets imdb id for each of the top 250
#The next one is for development, it only makes 5 API calls.
# top_250 = imdb.top_250[0..20].map{|movie| movie[:imdb_id]} #gets imdb id for each of the top 250
top_250_movies = top_250.map{|movie_id| imdb.find_movie_by_id(movie_id)}
# Creating genres
# only picks first genre and then selects only unique genres
genres_of_top_250 = top_250_movies.map{|movie| movie.genres[0]}.uniq
genres_of_top_250.each {|genre| Category.create({name: genre})}

# Expected results of API call:
# [
#     [ 0] "Crime",
#     [ 1] "Action",
#     [ 2] "Biography",
#     [ 3] "Adventure",
#     [ 4] "Western",
#     [ 5] "Drama",
#     [ 6] "Comedy",
#     [ 7] "Animation",
#     [ 8] "Horror",
#     [ 9] "Mystery",
#     [10] "Film-Noir",
#     [11] "Sci-Fi"
# ]


# Create an actor if the name is unique

# This is a beautiful one liner that I refuse to delete because it's amazing.
# actors_of_top_250 = top_250_movies.flat_map{|movie| movie.actors}.map{|actor|actor.name}.uniq

actors_of_top_250 = top_250_movies.flat_map{|movie| movie.actors}
actor_names_of_top_250 = actors_of_top_250.map{|actor|actor.name}.uniq
#exception handling
actor_names_of_top_250.each {|name| Actor.create({name: name})}

# Create Movies

top_250_movies.each do |movie|
 #since base index is zero and base category will be 1
  Movie.create({
    title:       movie.title,
    writer:      movie.writers[0].name,
    director:    movie.directors[0].name,
    year:        movie.release_date[0..3],
    category_id: genres_of_top_250.index(movie.genres[0]) + 1,
    trailer_url: movie.trailers[movie.trailers.keys.first],
    trailer_photo_url: movie.trailer_url,
    plot:        movie.plot,
    poster_url:  movie.poster_url})
end

# Create actor_movies

top_250_movies.each do |movie|
  current_movie = Movie.find_by(title: movie.title)
  movie.actors.each do |actor|
    current_actor = Actor.find_by(name: actor.name)
    if current_actor && current_movie
      ActorMovie.create({
        actor_id: current_actor.id,
        movie_id: current_movie.id
      })
    end
  end
end

class SearchMovie
	def initialize(name)
		@movie = name
		Tmdb::Api.key(ENV['MOVIE_API_KEY'])
	end

	def perform
		find_movies(@movie)
	end

	def find_movies(movie)
		Tmdb::Search.movie(movie).results.each do |movie|
			director = Tmdb::Movie.director(movie.id).each do |director|
				movie[:director] = director.name
			end
		end
	end
end

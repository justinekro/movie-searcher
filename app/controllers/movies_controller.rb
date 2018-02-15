class MoviesController < ApplicationController
	def index
	end

	def create
		@name = params[:name]
		redirect_to search_path(@name)
	end

	def search
		@name = params[:name]
		@movies = SearchMovie.new(@name).perform
	end
end
class MoviesController < ApplicationController
	def index
	end

	def create

		@name = params[:name]
		if @name.empty?
			flash[:error] = "Veuillez renseigner le nom du film"
			redirect_to root_path
		else
			redirect_to search_path(@name)
		end
	end

	def search
		@name = params[:name]
		@movies = SearchMovie.new(@name).perform
	end
end
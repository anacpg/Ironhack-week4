class MoviesController < ApplicationController

  def home
    @movie = Movie.new
  end

  def search
    # raise params.inspect
    @movie = Movie.find_by title: params[:title]
    raise @movie.inspect
  end
end

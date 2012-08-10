class MoviesController < ApplicationController
  
  def show
    @movie = Movie.find(params[:id])
  end
    
  def index
    @movies = Movie.all
  end
  
  def new
    
  end
  
  def create
    @movie = Movie.create!(params[:movie])
    flash[:notice] = "#{@movie.title} was successfully created."
    redirect_to movies_path
  end
  
  def edit
    @movie = Movie.find(params[:id])
  end
  
  def update
    @movie = Movie.find(params[:id])
    @movie.update_attributes!(params[:movie])
    flash[:notice] = "#{@movie.title} was successfully updated."
    redirect_to movie_path(@movie)
  end
  
  def destroy
    @movie = Movie.find(params[:id])
    @movie.destroy
    flash[:notice] = "#{@movie.title} deleted."
    redirect_to movies_path
  end
  
  def search_tmdb
    # hardwire to simulate failure
    flash[:warning] = "'#{params[:search_terms]}' was not found in TMDb."
    redirect_to movies_path
  end
end
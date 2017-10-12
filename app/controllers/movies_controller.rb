class MoviesController < ApplicationController
    def index
        @movies = Movie.all
    end
    
    private

  def movie_params
    params.require(:movie).permit(:title, :rating, :description, :release_date)
  end
  
  def show
  id = params[:id]
  @movie - Movie.find(id)
  
  end
end
        
    


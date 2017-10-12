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
  
  def new
    @movie = Movie.new
     # default: render 'new' template
  end 
  
   def create
       params.require(:movie)
        params[:movie].permit(:title,:rating,:release_date)
        @movie = Movie.create!(movie_params)  # new way
        flash[:notice] = "#{@movie.title} was successfully created."
        redirect_to movies_path
   end
  
end
        
    


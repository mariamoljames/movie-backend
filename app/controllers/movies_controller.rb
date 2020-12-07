class MoviesController < ApplicationController
    def index
        movies=Movie.all
            render json: movies   
    end
    def show
        movie=Movie.find(params[:id])
        render json: movie
    end
    def create
        movie = Movie.create(movie_params)
        render json: movie
    end
    def update
        movie = Movie.find(params[:id])
        movie.update(movie_params)
        render json: movie
    end
    def movie_params
        params.permit(:movie_id, :thumbs_up, :thumbs_down)
    end
end

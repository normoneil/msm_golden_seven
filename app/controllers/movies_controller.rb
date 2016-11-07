class MoviesController < ApplicationController

  def index
    @movies = Movie.all
  end

  def show
    @movies = Movie.find(params[:id])
  end

  def new_form
  end

  def create_row
    @movies = Movie.new
    @movies.title = params[:title]
    @movies.year = params[:year]
    @movies.duration = params[:duration]
    @movies.description = params[:description]
    @movies.image_url = params[:image_url]
    @movies.save
    render("show")
  end

  def edit_form
    @movies = Movie.find(params[:id])
  end

  def update_row
    @movies = Movie.find(params[:id])
    @movies.title = params[:title]
    @movies.year = params[:year]
    @movies.duration = params[:duration]
    @movies.description = params[:description]
    @movies.image_url = params[:image_url]
    @movies.save
    render("show")
  end

  def destroy
    @movies = Movie.find(params[:id])
  end

end

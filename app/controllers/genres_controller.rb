class GenresController < ApplicationController
  def index
    @genres = Genre.all
  end

  def new
    @genre = Genre.new
  end

  def create
    p params
    @genre = Genre.create(genre_params)
    p params
    redirect_to artist_path(@genre)
  end

  def show
    @genre = Genre.find(params[:id])
  end

  def edit
    @genre = Genre.find(params[:id])
  end

  def update
    @genre = Genre.find(params[:id])
    @genre.update(genre_params)
    redirect_to artist_path(@genre)
  end



  private

  def genre_params
    params.require(:genre).permit!
  end
end

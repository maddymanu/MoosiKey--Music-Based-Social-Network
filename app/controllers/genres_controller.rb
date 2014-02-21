class GenresController < ApplicationController

  def create
     @micropost = Micropost.find(params[:micropost_id])
     @genre = Genre.new(params[:genre_id])
     @genre.micropost = @micropost
    if @genre.save
       flash[:success] = "genre created!"
       redirect_to @micropost
    else

    end
  end



end
class ArtistsController < ApplicationController

  def index
    @artists = Artist.all
  end

  def edit
    @artist = Artist.find(params[:id])
  end
  
  def update
    @artist = Artist.find(params[:id])
    if @artist.update(artist_params)
      redirect_to root_path
    else
      render :edit
    end
  end

  private

  def artist_params
    params.require(:artist).permit(:name, :email, :job_request, :arttype_id, :arttouch_id, :profile, :price_id, :line, :twitter, :profile_image)
  end

end

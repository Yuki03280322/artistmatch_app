class ArtistsController < ApplicationController
  before_action :authenticate_artist!, only: :edit
  before_action :set_id, only: [:edit, :update]
  before_action :move_to_home, only: :edit


  def index
    @artists = Artist.all
  end

  def edit
  end
  
  def update
    if @artist.update(artist_params)
      redirect_to aciton: :edit
    else
      render :edit
    end
  end

  def show
    @artist = Artist.find(params[:id])
  end

  private

  def artist_params
    params.require(:artist).permit(:name, :email, :job_request, :arttype_id, :arttouch_id, :profile, :price_id, :line, :twitter, :profile_image)
  end

  def set_id
    @artist = Artist.find(params[:id])
  end

  def move_to_home
    redirect_to root_path unless current_artist.id == @artist.id
  end
end

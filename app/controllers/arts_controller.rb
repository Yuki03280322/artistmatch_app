class ArtsController < ApplicationController

  def new
    @art = Art.new
  end

  def create
    @art = Art.create(art_params)
    if @art.save
      redirect_to action: :index
    else
      render :new
    end
  end

  def index
    @arts = Art.all
  end

  private

  def art_params
    params.require(:art).permit(:image, :arttype_id, :arttouch_id).merge(artist_id: current_artist.id)
  end

end

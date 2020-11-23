class ArtsController < ApplicationController

  def new
    @art = Art.new
  end

  def create
    @art = Art.create(art_params)
    if @art.save
      redirect_to :new
    else
      render :new
    end
  end

  private

  def art_params
    params.require(:art).permit(:image, :arttype_id, :arttouch_id).merge(artist_id: current_user.id)
  end
  
end

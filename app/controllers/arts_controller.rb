class ArtsController < ApplicationController
  before_action :authenticate_artist!, except: :index

  def new
    @art = Art.new
    @arts = Art.includes(:artist).order("created_at DESC")
  end

  def create
    @art = Art.create(art_params)
    if @art.save
      redirect_to action: :new
    else
      @arts = Art.includes(:artist).order("created_at DESC")
      render :new
    end
  end

  def index
    @arts = Art.includes(:artist).order("created_at DESC")
  end

  def destroy
    art = Art.find(params[:id])
    art.destroy
    redirect_to action: :new
  end

  private

  def art_params
    params.require(:art).permit(:image, :arttype_id, :arttouch_id).merge(artist_id: current_artist.id)
  end
end

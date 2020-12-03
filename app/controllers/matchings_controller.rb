class MatchingsController < ApplicationController
  def index
    @arts = Art.includes(:artist)
  end
end

class MatchingsController < ApplicationController
  def index
    @arts = Art.all
  end
end

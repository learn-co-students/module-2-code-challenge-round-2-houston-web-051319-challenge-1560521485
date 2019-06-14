class EpisodesController < ApplicationController
#many to many ???? create appearance joiner class???
  def index
    @episodes = Episode.all
  end

  def show
    @episode = Episode.find(params[:id])
  end

  # def edit
  #   @episodes = Episode.all
  #   @guests = Guest.all
  #
  # end
  #
  #
  # def update
  #
  #
  # end
end

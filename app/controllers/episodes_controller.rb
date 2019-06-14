class EpisodesController < ApplicationController

  def index
    @episodes = Episode.all
  end
  def show
    @episode = Episode.find(params[:id])
  end
  def edit

  end
  def update

  end
  def new

  end
  def create

  end
  def delete

  end
  def episode_params
    params.permit(
      episode: [
        :date,
        :number
      ]
    )
  end
end

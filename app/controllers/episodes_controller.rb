class EpisodesController < ApplicationController

  def index
    @episodes = Episode.all
  end

  def show 
    @episode = Episode.find(params[:id])
  end 


  def new  
    @episode = Episode.new(params[:id])
  end 


  def create
    @Episode = Episode.create(params(episode_params))
  end 


  def edit
    @episode = Episode.find(params[:id])
  end   


  def update 
    @episode = Episode.find(params[:id])
    @episode.update(episode_params)
  end 


  def destroy 
    @episode = Guest.find(params[:id])
    @episode.destroy
  end 


  private def guest_params
    params.require(:episode).permit(:date, :number)
  end 


end

class EpisodesController < ApplicationController

  skip_before_action :verify_authenticity_token

def index
    @episodes = Episode.all
  end

  def show
    @episode = Episode.find(params[:id])
  end

  def new


  end

  def edit

    @episode = Episode.find(params[:id])

  end

  def create
    # byebug
    @guests = Guest.all
    @episodes = Episode.all

    Episode.create(date: params[:date], number: params[:number].to_i)

    redirect

    
  end

  def update

    @episode = Episode.find(params[:id])
    @episode.update(date: params[:date], number: params[:number].to_i)

  end

  def destroy
    @episode = Episode.find(params[:id])
    @episode.destroy
  end

end

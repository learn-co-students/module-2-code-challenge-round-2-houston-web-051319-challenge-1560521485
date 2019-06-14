class AppearancesController < ApplicationController

skip_before_action :verify_authenticity_token

def index
    @appearances = Appearance.all
  end

  def show
    @appearance = Appearance.find(params[:id])
    
  end

  def new

    @guests = Guest.all
    @episodes = Episode.all

  end

  def edit

    @appearance = Appearance.find(params[:id])
    @guests = Guest.all
    @episodes = Episode.all

  end

  def create
    # byebug
    @guests = Guest.all
    @episodes = Episode.all


    Appearance.create(guest_rating: params[:guest_rating], guest_id: params[:guest_id], episode_id: params[:episode_id])

    redirect_to appearances_path
    
  end

  def update

    @appearance = Appearance.find(params[:id])
    @appearance.update(guest_rating: params[:guest_rating], guest_id: params[:guest_id], episode_id: params[:episode_id])
    redirect_to appearances_path

  end

  def destroy
    @appearance = Appearance.find(params[:id])
    @appearance.destroy
    redirect_to appearances_path
  end

  end
  
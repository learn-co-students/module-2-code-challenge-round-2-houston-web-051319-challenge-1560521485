class AppearancesController < ApplicationController

  def index
    @appearances = Appearance.all
  end

  def new
    @appearance = Appearance.new()
  end

  def show
    @appearance = Appearance.find(params[:id])
  end

  def create
    @appearance = Appearance.new(appearance_params[:appearance])
    @appearance.save
    session[:id] = @appearance.episode_id
    @episode = Episode.find(session[:id])
    redirect_to episode_path(@episode.id)
  end



  def appearance_params
    params.permit(appearance: [:id, :guest_id, :episode_id, :rating])
  end



end

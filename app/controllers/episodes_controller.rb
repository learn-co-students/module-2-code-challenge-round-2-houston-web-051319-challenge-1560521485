class EpisodesController < ApplicationController

  def index
    @episodes = Episode.all
  end

  def new
  end

  def create
    
    @episodeguest = EpisodeGuest.create(episodeguest_params[:episodeguest])
    
    
   end

   def episodeguest_params
    params.permit(
        episodeguest: [
            :guest_id,
            :episode_id,
            :guest_rating,
            
        ]
    )
end
end

class AppearancesController < ApplicationController
    def index 
        @appearances = Appearance.all
    end
    def show
        
    end
    def new
        @appearances = Appearance.all
        @guests = Guest.all
    end
    def create 
        Appearance.create(strong_params)
        
        redirect_to episode_path(strong_params[:episode_id])
    end
    def strong_params
        params.require(:appearance).permit([
            :rating,
            :guest_id,
            :episode_id
        ])
    end
end

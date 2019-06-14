class AppearancesController < ApplicationController

    def index
      @appearances = Appearance.all
    end


    def show 
        @appearance = Appearance.find(params[:id])
    end 

    def new 
        @appearance = Appearance.new(params[:id])
    end 

    def create 
        @appearance = Appearance.create(appearance_params)
    end 

    private def appearance_params
        params.require(:appearance).permit(:guest_id, :episode_id, :rating)
      end 

end
  
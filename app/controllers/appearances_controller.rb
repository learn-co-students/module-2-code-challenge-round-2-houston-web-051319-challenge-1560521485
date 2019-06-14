class AppearancesController < ApplicationController

    def new

    end

    def create
        h = Appearance.create(permit)
        redirect_to h.episode
    end

    def permit
        params.require(:appearance).permit(:rating, :guest_id, :episode_id)
    end
end
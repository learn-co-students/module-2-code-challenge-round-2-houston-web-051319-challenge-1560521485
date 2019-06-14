class ApperancesController < ApplicationController

    def new
        @guests = Guest.all
        @episodes = Episode.all
    end

    def create
        apperance = Apperance.new(a_params)
        if(apperance.rating > 5)
            apperance.rating = 5
        elsif(apperance.rating<1)
            apperance.rating = 1
        end
        apperance.save
        byebug
        redirect_to episode_path(apperance.episode_id)
    end

    def a_params
        params.permit(
            :guest_id,
            :episode_id,
            :rating
        )
    end

end
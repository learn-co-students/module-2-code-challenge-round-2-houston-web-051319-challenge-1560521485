class AppearancesController < ApplicationController

    def new
      if (flash[:errors])
        @errors = flash[:errors]
      else
        @errors = []
      end
    end

    def create
      appearance = Appearance.new(appearance_params)
      if appearance.valid?
        appearance.save
        redirect_to episode_path(appearance.episode_id)
      else
        flash[:errors] = appearance.errors.messages
        redirect_to appearances_new_path
      end
    end

    private

    def appearance_params
      params.require(:appearance).permit(
        :guest_id,
        :episode_id,
        :rating
      )
    end
  
  end
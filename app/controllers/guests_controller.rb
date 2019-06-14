class GuestsController < ApplicationController

  def index
    @guests = Guest.all
  end
  def show
    @guest = Guest.find(params[:id])
  end
  def edit

  end
  def update

  end
  def new

  end
  def create

  end
  def delete

  end
  def guest_params
    params.permit(
      guest: [
        :name,
        :occupation,
        :appearances
      ]
    )
  end
end

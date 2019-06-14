class GuestsController < ApplicationController

  def index
    @guests = Guest.all
  end

  def show 
    @guests = Guest.find(params[:id])
  end 

  def new 
      @guests = Guest.new
  end 

  def create
      @guests = Guest.create(guest_params)
      redirect_to guests_path
  end 

end

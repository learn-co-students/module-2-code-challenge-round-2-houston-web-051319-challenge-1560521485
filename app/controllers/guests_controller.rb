class GuestsController < ApplicationController
  
  skip_before_action :verify_authenticity_token

  def index
    @guests = Guest.all
  end

  def show
    @guest = Guest.find(params[:id])
  end

  def new
  end

  def edit

    @guest = Guest.find(params[:id])

  end

  def create

    
  end

  def update

  end

  def destroy
  end


end

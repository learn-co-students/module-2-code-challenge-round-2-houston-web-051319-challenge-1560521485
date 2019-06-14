class AppearencesController < ApplicationController

  def create 
    @appearences = Appearence.create(appearence_params)
      redirect_to appearence_path
  end

  def index
    @appearences = Appearence.all
  end

  def show
    @appearences  = Appearence.find(params[:id])
  end 
  
  
  end
  
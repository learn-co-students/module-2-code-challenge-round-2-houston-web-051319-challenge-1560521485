class GuestsController < ApplicationController

  def index
    @guests = Guest.all
  end


  def show 
    @guest = Guest.find(params[:id])
  end 


  def new  
    @guest = Guest.new(params[:id])
  end 


  def create
    @guest = Guest.create(params(guest_params))
  end 


  def edit
    @guest = Guest.find(params[:id])
  end   


  def update 
    @guest = Guest.find(params[:id])
    @guest.update(guest_params)
  end 


  def destroy 
    @guest = Guest.find(params[:id])
    @guest.destroy
  end 


  private def guest_params
    params.require(:guest).permit(:name, :occupation, :episode_id)
  end 

end



# t.string :name
# t.string :occupation
# t.integer :episode_id 

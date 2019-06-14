class GuestsController < ApplicationController

  def index
    @guests = Guest.all
  end
  def index
    @guest = Guest.all
  end
  def new
    @guest=Guest.new()
end

def create
    
    @guest=Guest.create(guest_params[:guest])
    
    redirect_to guests_path
end
def show
    @guest=Guest.find(params[:id])
end



# def destroy
#     @employ=Employee.find(params[:id])
#     @employee.destroy
#     redirect_to episodes_path
# end




def guest_params
    params.permit(
        guest: [
            :name,
            :occupation,
            :episode_id
            
            
            
        ]
    )
end

end

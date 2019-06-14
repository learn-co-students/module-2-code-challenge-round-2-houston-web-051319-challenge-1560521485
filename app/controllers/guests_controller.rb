class GuestsController < ApplicationController
    def index 
        @guests= Guest.all
        
    end

    def show
        @guest = Guest.find(params[:id])
    
    end

    def new
        @guest = Guest.new
        @episodes = Episode.all
    
    end

    def create
        @guest = Guest.new(guest_params)

        if(@guest.save)
            redirect_to @guest
        else 
                render 'new'
        end
    end

    private def guest_params
        params.require(:guest).permit(:name, :occupation, :episode_id, :episode_rating)
    
    end

    def edit
        @guest = Guest.find(params[:id])
    
    end

    def update
        @employee = Employee.find(params[:id])

        if(@employee.update(employee_params))
            redirect_to @employee
        else 
                render 'edit'
        end
    
    end

end


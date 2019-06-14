class EpisodesController < ApplicationController

  def index
    @episodes = Episode.all
  end
  def new
    @episode=Episode.new()
end

def create
    
    @episode=Episode.create(episode_params[:episode])
    
    redirect_to "/episodes"
end
def show
    @episode=Episode.find(params[:id])
end

def edit
    @episode = Episode.find(params[:id])

end

def update 
    @episode=Episode.find(params[:id])
    @episode.update(episode_params[:episode])
    redirect_to episodes_path
end

# def destroy
#     @employ=Employee.find(params[:id])
#     @employee.destroy
#     redirect_to episodes_path
# end




def episode_params
    params.permit(
        episode: [
            :date,
            :number,
            :created_at,
            :updated_at
            
            
            
        ]
    )
end
end

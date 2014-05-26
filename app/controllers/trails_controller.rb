class TrailsController < ApplicationController
  load_and_authorize_resource

	def index
		@trails = Trail.all
	end

  def show
    @trail = Trail.find(params[:id])
  end

  def new
  	@trail = Trail.new
  end

  def create
  	@trail = Trail.new(trail_params)
  	if @trail.save
  		flash[:notice] = "Trail created."
      redirect_to trails_path
    else
      render 'new'
    end
  end

private
  def trail_params
    params.require(:trail).permit(:name, :length, :summit, :difficulty, :location, :loop_id, :description)
  end

end

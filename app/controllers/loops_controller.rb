class LoopsController < ApplicationController
  load_and_authorize_resource
  
	def index
		@loops = Loop.all
	end

  def show
    @loop = Loop.find(params[:id])
  end

  def new
  	@loop = Loop.new
  end

  def create
  	@loop = Loop.new(loop_params)
  	if @loop.save
  		flash[:notice] = "Loop created."
      redirect_to loops_path
    else
      render 'new'
    end
  end

  def edit
    @loop = Loop.find(params[:id])
  end

  def update
    @loop = Loop.find(params[:id])
    if @loop.update(loop_params)
      flash[:notice] = "Loop updated."
      redirect_to loop_path(@loop)
    else
      render 'edit'
    end
  end

  def destroy
    @loop = Loop.find(params[:id])
    @loop.destroy
    flash[:notice] = "Loop deleted."
    redirect_to loops_path
  end


private
  def loop_params
    params.require(:loop).permit(:name)
  end	

end
class CompletedsController < ApplicationController
load_and_authorize_resource
  def new
    @completed = Completed.new
  end

  def create
    @completed = Completed.new(completed_params)
    if @completed.save
      flash[:notice] = "Completed created."
      redirect_to completeds_path
    else
      render 'new'
    end
  end

private
  def completed_params
    params.require(:completed).permit(:user_id, :badge_id, :date)
  end

end

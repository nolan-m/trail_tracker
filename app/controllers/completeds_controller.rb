class CompletedsController < ApplicationController
load_and_authorize_resource
  def new
    @completed = Completed.new
  end

  def create
    @completed = Completed.new(completed_params)
    if @completed.save
      completed_trail = Trail.find(completed_params[:trail_id])
      if current_user.highest_summit < completed_trail.higest_summit
        current_user.update(:highest_summit => completed_trail.highest_summit)
      end
      current_user.update(:distance_hiked => current_user.distance_hiked += completed_trail.distance)
      completed_trail.badges.each do |badge|
        current_user.badges << badge
      end
      flash[:notice] = "Completed created."
      redirect_to user_path(@completed.user_id)
    else
      render 'new'
    end
  end

private
  def completed_params
    params.require(:completed).permit(:user_id, :badge_id, :trail_id, :date_complete).merge(user_id: current_user.id)
  end

end

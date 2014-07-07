class BadgesController < ApplicationController
  load_and_authorize_resource
	def index
		@badges = Badge.all
    @types = ['distance', 'summit', 'total', 'trail', 'loop', nil]
	end

  def show
    @badge = Badge.find(params[:id])
  end

  def new
  	@badge = Badge.new
  end

  def create
  	@badge = Badge.new(badge_params)
  	if @badge.save
  		flash[:notice] = "Badge created."
      redirect_to badges_path
    else
      render 'new'
    end
  end

  def edit
    @badge = Badge.find(params[:id])
  end

  def update
    @badge = Badge.find(params[:id])
    if @badge.update(badge_params)
      flash[:notice] = "Badge updated."
      redirect_to badge_path(@badge)
    else
      render 'edit'
    end
  end

  def destroy
    @badge = Badge.find(params[:id])
    @badge.destroy
    flash[:notice] = "Badge deleted."
    redirect_to badges_path
  end


private
  def badge_params
    params.require(:badge).permit(:name, :requirements, :badge_type, :image, :trail_ids => [])
  end

end

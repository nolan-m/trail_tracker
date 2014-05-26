class BadgesController < ApplicationController
  load_and_authorize_resource
	def index
		@badges = Badge.all
    @types = ['distance', 'summit', 'total', 'trail', 'loop']
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
      # params[:badge][:trail_ids].each do |trail|
      #   @badge.trails << Trail.find(trail)
      # end
  		flash[:notice] = "Badge created."
      redirect_to badges_path
    else
      render 'new'
    end
  end

private
  def badge_params
    params.require(:badge).permit(:name, :requirements, :badge_type, :image, :trail_ids => [])
  end

end
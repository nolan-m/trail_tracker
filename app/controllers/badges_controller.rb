class BadgesController < ApplicationController
	def index
		@badges = Badge.all
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

private
  def badge_params
    params.require(:badge).permit(:name, :requirements)
  end

end
class LoopsController < ApplicationController
	def index
		@loops = Loop.all
	end

  def show
    @loop = loop.find(params[:id])
  end

end
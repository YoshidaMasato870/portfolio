class TopController < ApplicationController
	def index
		@q = Plan.ransack(params[:q])
		if params[:favorite]
			@plans = Plan.favorite
		elsif params[:latest]
			@plans = Plan.latest
		elsif params[:old]
			@plans = Plan.old
		else
			@plans = Plan.favorite
		end
	end
end

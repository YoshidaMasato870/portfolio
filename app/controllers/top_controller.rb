class TopController < ApplicationController
	def index
		@q = Plan.ransack(params[:q])
		if params[:favorite]
			@plans = Kaminari.paginate_array(Plan.favorite).page(params[:page])
		elsif params[:latest]
			@plans = Kaminari.paginate_array(Plan.latest).page(params[:page])
		elsif params[:old]
			@plans = Kaminari.paginate_array(Plan.old).page(params[:page])
		else
			@plans = Kaminari.paginate_array(Plan.favorite).page(params[:page])
		end
	end
end

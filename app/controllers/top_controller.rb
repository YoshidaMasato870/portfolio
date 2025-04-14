class TopController < ApplicationController
	def index
		@user = current_user
		@q = Plan.ransack(params[:q])
	end
end

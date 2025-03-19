class PlansController < ApplicationController
	def new
		@plan = Plan.new
	end

	def create
		@plan = Plan.new(plan_palams)
		@plan.user_id = current_user.id
		if @plan.save
			redirect_to myplan_plan_path(current_user.id)
		else
			render :new
		end
	end

	def destroy
		@plan = Plan.find(params[:id])
		@plan.destroy
		redirect_to myplan_plan_path(current_user.id)
	end

	def myplan
		@plans = Plan.where(user_id: current_user.id)
	end

	private
		def plan_palams
			params.require(:plan).permit(:plan_name, :plan_image, :plan_introduction, :user_id)
		end
end

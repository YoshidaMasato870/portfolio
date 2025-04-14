class PlansController < ApplicationController
	def new
		@plan = Plan.new
		@plan.spots.build
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

	def show
		@plan = Plan.find(params[:id])
		@plan_spots = @plan.spots
	end

	def edit
		@plan = Plan.find(params[:id])
	end

	def update
		@plan = Plan.find(params[:id])
		if @plan.update(plan_palams)
			redirect_to plan_path(@plan.id)
		else
			render :edit
		end
	end

	def destroy
		@plan = Plan.find(params[:id])
		@plan.destroy
		redirect_to myplan_plan_path(current_user.id)
	end

	def search
		@q = Plan.ransack(params[:q])
		@results = @q.result
		@count = @results.count
	end

	def myplan
		@plans = Plan.where(user_id: current_user.id)
	end

	private
		def plan_palams
			params.require(:plan).permit(:name, :image, :area_id, :introduction, :user_id, [spots_attributes: [:id, :spot_id, :name, :image, :introduction, :_destroy]])
		end
end

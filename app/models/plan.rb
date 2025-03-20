class Plan < ApplicationRecord
	belongs_to :user
	mount_uploader :plan_image, PlanImageUploader
	validates :plan_name, presence: true
	validates :area_id, presence: true
end

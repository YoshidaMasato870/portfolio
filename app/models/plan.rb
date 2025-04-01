class Plan < ApplicationRecord
	belongs_to :user
	has_many :spot, dependent: :destroy
	mount_uploader :image, PlanImageUploader
	validates :name, presence: true
	validates :area_id, presence: true
end

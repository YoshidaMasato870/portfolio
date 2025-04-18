class Plan < ApplicationRecord
	belongs_to :user
	has_many :spots, inverse_of: :plan, dependent: :destroy
	has_many :favorites, dependent: :destroy
	accepts_nested_attributes_for :spots, allow_destroy: true
	validates_associated :spots
	mount_uploader :image, PlanImageUploader
	validates :name, presence: true
	validates :area_id, presence: true

	scope :latest, -> { sort_by { |plan| plan.created_at }.reverse }
	scope :old, -> { sort_by { |plan| plan.created_at } }
	scope :favorite, -> { includes(:favorites).sort_by { |plan| -plan.favorites.count } }
	
	def self.ransackable_attributes(auth_object = nil)
		["name", "introduction", "area_id"] 
	end

	def favorited_by?(user)
		favorites.exists?(user_id: user.id)
	end
end

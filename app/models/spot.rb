class Spot < ApplicationRecord
	belongs_to :plan
	mount_uploader :image, SpotUploader
	validates :name, presence: true
end

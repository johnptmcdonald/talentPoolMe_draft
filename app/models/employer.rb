class Employer < ActiveRecord::Base
	mount_uploader :image, ImageUploader
	has_many :likes
	has_many :users, through: :likes
end

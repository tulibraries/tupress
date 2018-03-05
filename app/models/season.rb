class Season < ApplicationRecord
	has_many :book
	mount_uploader :image, SeasonImageUploader
end

class Season < ApplicationRecord
	has_many :book
	mount_uploader :image, 	SeasonImageUploader
	mount_uploader :pdf,		DocumentUploader
end

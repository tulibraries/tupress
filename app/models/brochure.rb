class Brochure < ApplicationRecord
	mount_uploader :pdf, DocumentUploader
	mount_uploader :image, BrochureImageUploader
end

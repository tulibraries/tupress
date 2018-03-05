class Catalog < ApplicationRecord
	has_many :book
	# mount_uploader :image, CatalogImageUploader
end

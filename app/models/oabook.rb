class Oabook < ApplicationRecord
	require 'carrierwave/orm/activerecord'

	mount_uploader :cover_image, BookCoverUploader

  mount_uploader :epub, DocumentUploader
  mount_uploader :pdf, DocumentUploader
	mount_uploader :mobi, DocumentUploader
end

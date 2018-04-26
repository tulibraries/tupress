class Page < ApplicationRecord
	require 'carrierwave/orm/activerecord'
	mount_uploader :file, DocumentUploader
end

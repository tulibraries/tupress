class Highlight < ApplicationRecord

	require 'carrierwave/orm/activerecord'

	mount_uploader :image, HighlightImageUploader
end

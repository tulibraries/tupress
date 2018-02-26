class NewsItem < ApplicationRecord
	require 'carrierwave/orm/activerecord'

	mount_uploader :image, NewsItemsImageUploader
end

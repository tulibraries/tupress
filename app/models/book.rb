class Book < ApplicationRecord

require 'carrierwave/orm/activerecord'

	serialize :author, Array
	serialize :about_author, Array
	serialize :reviews, Array
	serialize :binding, Array
	serialize :subjects, Array
	serialize :in_series, Array

	belongs_to :series, :counter_cache => true, optional: true
	belongs_to :subject, :counter_cache => true, optional: true
	has_many :reviews

	mount_uploader :cover_image, BookCoverUploader
	mount_uploader :highlight_image, HighlightImageUploader
end

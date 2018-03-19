class Book < ApplicationRecord

require 'carrierwave/orm/activerecord'

before_save :sort_titles

	serialize :author, Array
	serialize :about_author, Array
	serialize :reviews, Array
	serialize :binding, Array
	serialize :subjects, Array
	serialize :in_series, Array

	belongs_to :series, :counter_cache => true, optional: true
	belongs_to :subject, :counter_cache => true, optional: true
	belongs_to :season, :counter_cache => true, optional: true
	has_many :reviews

	mount_uploader :cover_image, BookCoverUploader
	mount_uploader :highlight_image, HighlightImageUploader

	def self.search(q)
	  if q
	    Book.where('title LIKE ?', "%#{q}%").order(:title)
		end
	end

	def sort_titles
    excludes = ["A", "An", "The"]
  	sort_title = self.title
  	first = sort_title.first
    if excludes.include?(first.titlecase) 
    	sort_title = sort_title.sub(/^(the|a|an)\s+/i, '')
    	self.sort_title = sort_title+", "+first
  		else self.sort_title = self.title
  	end
  end

end

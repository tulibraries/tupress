class Book < ApplicationRecord

require 'carrierwave/orm/activerecord'

before_save :sort_titles

	serialize :author_id, Array
	# serialize :author_prefix, Array
	# serialize :author_first, Array
	# serialize :author_last, Array
	# serialize :author_suffix, Array
	# serialize :reviews, Array
	serialize :binding, Array
	serialize :subjects, Array
	serialize :in_series, Array

	belongs_to :series, :counter_cache => true, optional: true
	belongs_to :subject, :counter_cache => true, optional: true
	belongs_to :season, :counter_cache => true, optional: true
	# has_many :reviews

	mount_uploader :cover_image, BookCoverUploader
	mount_uploader :excerpt, BookExcerptUploaderUploader
	mount_uploader :is_guide, DocumentUploader

	def self.search(q)
	  if q
	    Book.where({ status: ["NP","IP","OS","OP"] }).where('title LIKE ?', "%#{q}%").or(Book.where('author_byline LIKE ?', "%#{q}%")).order(:sort_title)
		end
	end

	def sort_titles
    excludes = ["A", "An", "The"]
  	sort_title = self.title
  	first = sort_title.split.first
    if !first.nil? && excludes.include?(first.titlecase) 
    	sort_title = sort_title.sub(/^(the|a|an)\s+/i, '')
    	self.sort_title = sort_title+", "+first
  		else self.sort_title = self.title
  	end
  end

end

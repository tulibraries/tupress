class Book < ApplicationRecord

require 'carrierwave/orm/activerecord'

before_save :sort_titles

	serialize :author_id, Array
	serialize :binding, Array
	serialize :subjects, Array
	serialize :in_series, Array

	belongs_to :series, :counter_cache => true, optional: true
	belongs_to :subject, :counter_cache => true, optional: true
	belongs_to :season, :counter_cache => true, optional: true

	mount_uploader :cover_image, BookCoverUploader
	mount_uploader :excerpt, BookExcerptUploaderUploader
	mount_uploader :is_guide, DocumentUploader
	mount_uploader :suggested_reading, DocumentUploader

	def self.search(q)
	  if q
	    # @books = Book.where({ status: ["NP","IP","OS","OP"] }).where('title REGEXP ?', "(^|\\W)#{q}(\\W|$)").or(Book.where('subtitle REGEXP ?', "(^|\\W)#{q}(\\W|$)")).or(Book.where('author_byline REGEXP ?', "(^|\\W)#{q}(\\W|$)")).order(:sort_title)
	    @books = Book.where({ status: ["NP","IP","OS","OP"] }).where("title LIKE ?", "%#{q}%").or(Book.where("subtitle LIKE ?", "%#{q}%")).or(Book.where("author_byline LIKE ?", "%#{q}%")).order(:sort_title)
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

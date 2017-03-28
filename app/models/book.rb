class Book < ApplicationRecord
	attr_accessor :title,
	  	:subtitle,
      :author_attributes,
      :about_author_attributes,
  		:intro,
	  	:blurb,
	  	:excerpt,
	  	:is_guide,
	  	:cover_image,
	  	:format,
	  	:isbn,
	  	:ean,
	  	:pub_date,
	  	:binding,
	  	:description,
	  	:category_attributes,
	  	:review_attributes,
	  	:price
	has_many :author
	has_many :about_author
	has_many :category
	has_many :series
	has_many :review

	accepts_nested_attributes_for :author
	accepts_nested_attributes_for :about_author
  accepts_nested_attributes_for :review
  accepts_nested_attributes_for :category
  accepts_nested_attributes_for :series
end

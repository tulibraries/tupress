class Book < ApplicationRecord

	serialize :author, Array
	serialize :about_author, Array
	serialize :reviews, Array
	serialize :binding, Array
	serialize :subjects, Array
	serialize :in_series, Array

	belongs_to :series, :counter_cache => true

end

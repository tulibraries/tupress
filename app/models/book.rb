class Book < ApplicationRecord

	serialize :author, Array
	serialize :about_author, Array
	serialize :reviews, Array
	serialize :binding, Array
	has_many :subject
	has_many :series

end

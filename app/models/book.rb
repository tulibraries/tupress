class Book < ApplicationRecord

	serialize :author, Array
	serialize :about_author, Array
	serialize :categories, Array
	serialize :reviews, Array
	serialize :binding, Array

end

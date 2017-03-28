class Author < ApplicationRecord
	attr_accessor :name, :about, :image

	has_many :book
end

class Review < ApplicationRecord
	belongs_to :book
	has_many :book
end

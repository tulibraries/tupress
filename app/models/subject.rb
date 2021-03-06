class Subject < ApplicationRecord
  has_many :book, :counter_cache => true

	def self.search(q)
		if q
			# @subjects = Subject.where("subject REGEXP ?", "(^|\\W)#{q}(\\W|$)")
			@subjects = Subject.where("subject LIKE ?", "%#{q}%")
		end
	end
end

class Series < ApplicationRecord
	has_many :book, :counter_cache => true

	def self.search(q)
		if q
			# @series = Series.where("series_name REGEXP ?", "(^|\\W)#{q}(\\W|$)")
			@series = Series.where("series_name LIKE ?", "%#{q}%")
		end
	end
end

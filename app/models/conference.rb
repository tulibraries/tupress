class Conference < ApplicationRecord
	# serialize :month, Array
	def self.search(q)
	  if q
	    @conferences = Conference.where("conference REGEXP ?", "(^|\\W)#{q}(\\W|$)")
	    # @conferences = Conference.where("conference LIKE ?", "%#{q}%")
		end
	end
end

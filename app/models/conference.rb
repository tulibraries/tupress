class Conference < ApplicationRecord
	# serialize :month, Array
	def self.search(q)
	  if q
	    @conferences = Conference.where('conference REGEXP ?', "(^|\\W)#{q}(\\W|$)")
		end
	end
end

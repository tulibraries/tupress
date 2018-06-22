class Rep < ApplicationRecord
	 def self.search(q)
	  if q
			# @reps = Rep.where('name REGEXP ?', "(^|\\W)#{q}(\\W|$)")
			@reps = Rep.where('name LIKE ?', "%#{q}%")
		end
	end
end

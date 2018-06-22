class Rep < ApplicationRecord
	 def self.search(q)
	  if q
			@reps = Rep.where('name REGEXP ?', "(^|\\W)#{q}(\\W|$)")
		end
	end
end

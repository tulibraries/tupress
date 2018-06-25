class Test < ApplicationRecord
		def self.search(q)
	  if q
	    @tests = Test.where("title REGEXP ?", "(^|\\W)#{q}(\\W|$)")
		end
	end

end

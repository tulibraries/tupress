class Test < ApplicationRecord
		def self.search(q)
	  if q
	    @test = Test.where("title REGEXP ?", "(^|\\W)#{q}(\\W|$)")
		end
	end

end

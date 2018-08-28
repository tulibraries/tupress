class Journal < ApplicationRecord
	def self.search(q)
	  if q
	    # @journals = Journal.where("title REGEXP ?", "(^|\\W)#{q}(\\W|$)")
	    @journals = Journal.where("title LIKE ?", "%#{q}%")
		end
	end
end

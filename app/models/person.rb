class Person < ApplicationRecord
	# belongs_to :document
		def self.search(q)
	  if q
	    @people = (Person.where('name REGEXP ?', "(^|\\W)#{q}(\\W|$)")).or(Person.where('position REGEXP ?', "(^|\\W)#{q}(\\W|$)"))
		end
	end
end

class Faq < ApplicationRecord
		def self.search(q)
	  if q
	    # @faqs = Faq.where("q REGEXP ?", "(^|\\W)#{q}(\\W|$)").or(Faq.where("a REGEXP ?", "(^|\\W)#{q}(\\W|$)")).order(:q)
	    @faqs = Faq.where("q LIKE ?", "#{q}").or(Faq.where("a LIKE ?", "%#{q}%")).order(:q)
		end
	end
end

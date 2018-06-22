class Event < ApplicationRecord
	mount_uploader :image, EventImageUploader
	def self.search(q)
	  if q
	    # @events = Event.where('title REGEXP ?', "(^|\\W)#{q}(\\W|$)")
	    @events = Event.where("title LIKE ?", "%#{q}%")
		end
	end
end

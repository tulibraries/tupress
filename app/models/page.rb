class Page < ApplicationRecord
	require 'carrierwave/orm/activerecord'
	mount_uploader :file, DocumentUploader
  
  def self.search(q)
	  if q
			@site = Page.where('name REGEXP ? AND id != 10 AND id != 11 AND id != 12', "(^|\\W)#{q}(\\W|$)").or(Page.where('content REGEXP ? AND id != 11 AND id != 12', "(^|\\W)#{q}(\\W|$)"))
		end
	end
end

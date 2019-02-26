class Page < ApplicationRecord
	require 'carrierwave/orm/activerecord'

  def self.search(q)
	  if q
			# @site = Page.where("name REGEXP ? AND id != 10 AND id != 11 AND id != 12", "(^|\\W)#{q}(\\W|$)").or(Page.where("content REGEXP ? AND id != 11 AND id != 12", "(^|\\W)#{q}(\\W|$)"))
			@site = Page.where("name LIKE ? AND id != 10 AND id != 11 AND id != 12", "%#{q}%").or(Page.where("content LIKE ? AND id != 11 AND id != 12", "%#{q}%"))
		end
	end
end

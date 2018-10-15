class Oabook < ApplicationRecord
	require 'carrierwave/orm/activerecord'

	mount_uploader :cover_image, BookCoverUploader

  mount_uploader :epub, DocumentUploader
  mount_uploader :pdf, DocumentUploader
	mount_uploader :mobi, DocumentUploader

		def self.search(q)
	  if q
	    @oabooks = Oabook.where("title LIKE ?", "%#{q}%").or(Oabook.where("subtitle LIKE ?", "%#{q}%")).or(Oabook.where("author LIKE ?", "%#{q}%")).order(:title)
		end
	end

end

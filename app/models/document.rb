class Document < ApplicationRecord
  # has_attached_file :file, 
  #        :url => "/files/:basename.:extension",
  #        :path => ":rails_root/public/uploads/:basename.:extension"

  # validates_attachment_file_name :file, :matches => [/pdf\Z/, /doc?x\Z/, /xls?x\Z/, /txt\Z/]
end

class Document < ApplicationRecord
  require 'carrierwave/orm/activerecord'

  mount_uploader :filename, DocumentUploader
end

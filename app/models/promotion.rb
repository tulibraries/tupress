class Promotion < ApplicationRecord
  require 'carrierwave/orm/activerecord'

  mount_uploader :pdf, DocumentUploader
  
  has_many :book_promotions, dependent: :destroy
  has_many :books, through: :book_promotions
end

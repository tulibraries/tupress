class BookPromotion < ApplicationRecord
  belongs_to :promotion
  belongs_to :book
end

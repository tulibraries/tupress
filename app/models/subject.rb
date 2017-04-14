class Subject < ApplicationRecord
  has_many :book, :counter_cache => true
end

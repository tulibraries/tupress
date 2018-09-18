class Brochure < ApplicationRecord
  belongs_to :subject
  accepts_nested_attributes_for :subject

	mount_uploader :pdf, DocumentUploader
end

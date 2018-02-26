class Event < ApplicationRecord
	mount_uploader :image, EventImageUploader
end

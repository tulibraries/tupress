class Harvest < ApplicationRecord
	serialize :updated_ids, Array
	serialize :created_ids, Array
	serialize :error_ids, Array
end

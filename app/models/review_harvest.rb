class ReviewHarvest < ApplicationRecord
		serialize :error_ids, Array
		serialize :created_ids, Array
		serialize :deleted_ids, Array
end

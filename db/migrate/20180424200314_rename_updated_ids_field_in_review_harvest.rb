class RenameUpdatedIdsFieldInReviewHarvest < ActiveRecord::Migration[5.0]
  def change
  	rename_column :review_harvests, :updated_ids, :deleted_ids
  end
end

class AddErrorIdsFieldToHarvests < ActiveRecord::Migration[5.0]
  def change
    add_column :harvests, :error_ids, :text
  end
end

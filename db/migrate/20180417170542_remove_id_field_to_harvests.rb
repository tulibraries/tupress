class RemoveIdFieldToHarvests < ActiveRecord::Migration[5.0]
  def change
  	remove_column :harvests, :harvest_id, :integer
  end
end

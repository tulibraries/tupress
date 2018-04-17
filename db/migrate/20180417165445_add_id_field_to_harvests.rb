class AddIdFieldToHarvests < ActiveRecord::Migration[5.0]
  def change
    add_column :harvests, :harvest_id, :integer
  end
end

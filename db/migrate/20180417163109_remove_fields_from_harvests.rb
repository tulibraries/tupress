class RemoveFieldsFromHarvests < ActiveRecord::Migration[5.0]
  def change  	
  	remove_column :harvests, :success_count, :integer
  	remove_column :harvests, :error_count, :integer
  end
end

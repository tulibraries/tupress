class RemoveUpdatedCountAndCreatedCountFieldsFromHarvests < ActiveRecord::Migration[5.0]
  def change
  	remove_column :harvests, :updated_count, :integer
  	remove_column :harvests, :created_count, :integer
  end
end

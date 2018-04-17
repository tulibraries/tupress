class CreateHarvests < ActiveRecord::Migration[5.0]
  def change
    create_table :harvests do |t|
      t.integer :success_count
      t.integer :error_count
      t.integer :updated_count
      t.integer :created_count
      t.string :updated_ids
      t.string :created_ids

      t.timestamps
    end
  end
end

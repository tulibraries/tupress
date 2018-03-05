class RenameCatalogsToSeasonss < ActiveRecord::Migration[5.0]
  def change
  	# remove_index :catalogs, :slug, unique: true
    rename_table :catalogs, :seasons
  end
end

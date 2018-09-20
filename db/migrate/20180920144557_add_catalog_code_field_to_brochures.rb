class AddCatalogCodeFieldToBrochures < ActiveRecord::Migration[5.0]
  def change
    add_column :brochures, :catalog_code, :string
  end
end

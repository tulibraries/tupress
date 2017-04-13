class AddCatalogFieldToBooks < ActiveRecord::Migration[5.0]
  def change
    add_column :books, :catalog, :string
  end
end

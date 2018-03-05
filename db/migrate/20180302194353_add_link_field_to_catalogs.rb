class AddLinkFieldToCatalogs < ActiveRecord::Migration[5.0]
  def change
    add_column :catalogs, :link, :string
  end
end

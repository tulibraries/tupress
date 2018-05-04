class AddCollectionFieldToOabooks < ActiveRecord::Migration[5.0]
  def change
    add_column :oabooks, :collection, :string
  end
end

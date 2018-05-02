class AddFieldsToOabooks < ActiveRecord::Migration[5.0]
  def change
    add_column :oabooks, :epub, :string
    add_column :oabooks, :pdf, :string
    add_column :oabooks, :mobi, :string
  end
end

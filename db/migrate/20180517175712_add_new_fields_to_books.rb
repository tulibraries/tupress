class AddNewFieldsToBooks < ActiveRecord::Migration[5.0]
  def change
    add_column :books, :supplement, :string
    add_column :books, :edition, :string
  end
end

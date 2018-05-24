class AddAdditionalFieldsToOabooks < ActiveRecord::Migration[5.0]
  def change
    add_column :oabooks, :subtitle, :string
    add_column :oabooks, :edition, :string
    add_column :oabooks, :author, :string
    add_column :oabooks, :supplemental, :string
  end
end

class AddStatusFieldToBooks < ActiveRecord::Migration[5.0]
  def change
  	add_column :books, :status, :string
  end
end

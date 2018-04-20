class AddAuthorIdFieldToBooks < ActiveRecord::Migration[5.0]
  def change
    add_column :books, :author_id, :string
  end
end

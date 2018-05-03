class AddExcerptTextFieldToBooks < ActiveRecord::Migration[5.0]
  def change
    add_column :books, :excerpt_text, :string
  end
end

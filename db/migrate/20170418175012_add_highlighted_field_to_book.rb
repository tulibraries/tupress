class AddHighlightedFieldToBook < ActiveRecord::Migration[5.0]
  def change
    add_column :books, :highlight, :char
  end
end

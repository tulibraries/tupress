class AddHighlightedImageFieldToBook < ActiveRecord::Migration[5.0]
  def change
    add_column :books, :highlight_image, :string
  end
end

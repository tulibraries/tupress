class AddFieldsToBooks < ActiveRecord::Migration[5.0]
  def change
    add_column :books, :author_prefix, :string
    add_column :books, :author_first, :string
    add_column :books, :author_last, :string
    add_column :books, :author_suffix, :string
    add_column :books, :author_byline, :string
    add_column :books, :author_bios, :text
    add_column :books, :pages_total, :string
    add_column :books, :trim, :string
    add_column :books, :illustrations, :string
  end
end

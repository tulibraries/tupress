class AddPrintIsbnToOabooks < ActiveRecord::Migration[5.0]
  def change
    add_column :oabooks, :print_isbn, :string
  end
end

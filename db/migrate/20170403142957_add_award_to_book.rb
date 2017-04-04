class AddAwardToBook < ActiveRecord::Migration[5.0]
  def change
    add_column :books, :award, :string
  end
end

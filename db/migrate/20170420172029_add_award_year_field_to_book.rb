class AddAwardYearFieldToBook < ActiveRecord::Migration[5.0]
  def change
    add_column :books, :award_year, :string
  end
end

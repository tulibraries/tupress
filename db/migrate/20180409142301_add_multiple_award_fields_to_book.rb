class AddMultipleAwardFieldsToBook < ActiveRecord::Migration[5.0]
  def change
    add_column :books, :award_year2, :string
    add_column :books, :award2, :string
    add_column :books, :award_year3, :string
    add_column :books, :award3, :string
    add_column :books, :award_year4, :string
    add_column :books, :award4, :string
  end
end

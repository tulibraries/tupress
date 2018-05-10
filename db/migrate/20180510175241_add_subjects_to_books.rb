class AddSubjectsToBooks < ActiveRecord::Migration[5.0]
  def change
    add_column :books, :subject1, :string
    add_column :books, :subject2, :string
    add_column :books, :subject3, :string
  end
end

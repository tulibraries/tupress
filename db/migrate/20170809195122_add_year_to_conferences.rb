class AddYearToConferences < ActiveRecord::Migration[5.0]
  def change
    add_column :conferences, :year, :string
  end
end

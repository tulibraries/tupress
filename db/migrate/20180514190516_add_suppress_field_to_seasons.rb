class AddSuppressFieldToSeasons < ActiveRecord::Migration[5.0]
  def change
    add_column :seasons, :suppress, :string
  end
end

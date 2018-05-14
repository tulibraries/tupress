class ChangeSupressValueInSeasons < ActiveRecord::Migration[5.0]
  def change
    change_column_null :seasons, :suppress, 0
  end
end

class ChangeSupressValueToBooleanInSeasons < ActiveRecord::Migration[5.0]
	def change
  	change_column :seasons, :suppress, :char, :default => "0"
  end
end

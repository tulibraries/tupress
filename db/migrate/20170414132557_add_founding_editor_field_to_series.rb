class AddFoundingEditorFieldToSeries < ActiveRecord::Migration[5.0]
  def change
    add_column :series, :founder, :string
  end
end

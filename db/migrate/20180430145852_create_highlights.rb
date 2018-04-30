class CreateHighlights < ActiveRecord::Migration[5.0]
  def change
    create_table :highlights do |t|
      t.string :link
      t.string :image
      t.string :homepage

      t.timestamps
    end
  end
end

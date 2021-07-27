class CreateOabooks < ActiveRecord::Migration[5.0]
  def change
    create_table :oabooks do |t|
      t.string :title
      t.text :description
      t.string :isbn

      t.timestamps
    end
  end
end

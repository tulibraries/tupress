class CreateEvents < ActiveRecord::Migration[5.0]
  def change
    create_table :events do |t|
      t.datetime :startdate
      t.datetime :enddate
      t.string :description
      t.string :where

      t.timestamps
    end
  end
end

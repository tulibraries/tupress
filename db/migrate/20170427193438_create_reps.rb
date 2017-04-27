class CreateReps < ActiveRecord::Migration[5.0]
  def change
    create_table :reps do |t|
      t.string :company
      t.string :name
      t.string :address
      t.string :address2
      t.string :address3
      t.string :phone
      t.string :fax
      t.string :email
      t.string :website
      t.string :region

      t.timestamps
    end
  end
end

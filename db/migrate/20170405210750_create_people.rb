class CreatePeople < ActiveRecord::Migration[5.0]
  def change
    create_table :people do |t|
      t.string :name
      t.string :email
      t.string :position
      t.string :department
      t.string :position_description

      t.timestamps
    end
  end
end

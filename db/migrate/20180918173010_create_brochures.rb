class CreateBrochures < ActiveRecord::Migration[5.0]
  def change
    create_table :brochures do |t|
      t.string :title
      t.string :subject_id
      t.boolean :promoted_to_subject
      t.boolean :promoted_to_homepage

      t.timestamps
    end
  end
end

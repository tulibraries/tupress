class CreateBrochures < ActiveRecord::Migration[5.0]
  def change
    create_table :brochures do |t|
      t.string :title
      t.string :subject_id
      t.string :pdf
      t.string :catalog_code
      t.string :image

      t.boolean :promoted_to_subject
      t.boolean :promoted_to_homepage

      t.timestamps
    end
  end
end

class CreateBrochures < ActiveRecord::Migration[5.0]
  def change
    create_table :brochures do |t|
      t.string :title
      t.belongs_to :subjects, foreign_key: true
      t.boolean :promoted_to_subject
      t.boolean :promoted_to_homepage

      t.timestamps
    end
  end
end

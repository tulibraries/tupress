class DropIndexFieldFromBrochure < ActiveRecord::Migration[5.0]
  def change
	remove_foreign_key :brochures, column: :subject_id
  end
end

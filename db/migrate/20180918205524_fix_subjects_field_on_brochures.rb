class FixSubjectsFieldOnBrochures < ActiveRecord::Migration[5.0]
  def change
	rename_column :brochures, :subjects_id, :subject_id
  end
end

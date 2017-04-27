class AddCoverageFieldToReps < ActiveRecord::Migration[5.0]
  def change
    add_column :reps, :coverage, :string
  end
end

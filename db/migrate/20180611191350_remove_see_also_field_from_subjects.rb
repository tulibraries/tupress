class RemoveSeeAlsoFieldFromSubjects < ActiveRecord::Migration[5.0]
  def change
  	remove_column :subjects, :seealso, :string
  end
end

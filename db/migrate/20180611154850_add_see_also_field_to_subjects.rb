class AddSeeAlsoFieldToSubjects < ActiveRecord::Migration[5.0]
  def change
    add_column :subjects, :seealso, :string
  end
end

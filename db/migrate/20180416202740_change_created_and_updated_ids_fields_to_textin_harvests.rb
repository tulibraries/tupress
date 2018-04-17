class ChangeCreatedAndUpdatedIdsFieldsToTextinHarvests < ActiveRecord::Migration[5.0]
  def change
  	change_column :harvests, :updated_ids, :text
  	change_column :harvests, :created_ids, :text
  end
end

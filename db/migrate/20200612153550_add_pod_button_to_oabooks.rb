class AddPodButtonToOabooks < ActiveRecord::Migration[5.0]
  def change
    add_column :oabooks, :pod, :boolean
  end
end

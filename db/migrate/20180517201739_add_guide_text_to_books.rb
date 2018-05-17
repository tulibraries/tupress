class AddGuideTextToBooks < ActiveRecord::Migration[5.0]
  def change
    add_column :books, :is_guide_text, :text
  end
end

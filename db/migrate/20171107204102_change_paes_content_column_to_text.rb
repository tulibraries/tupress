class ChangePaesContentColumnToText < ActiveRecord::Migration[5.0]
  def change
    change_column :pages, :content2, :text
  end
end

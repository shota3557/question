class RenameNameColumnToCauses < ActiveRecord::Migration[6.1]
  def change
    rename_column :causes, :name, :content
  end
end

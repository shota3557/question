class AddMovieToCauses < ActiveRecord::Migration[6.1]
  def change
    add_column :causes, :movie, :text
  end
end

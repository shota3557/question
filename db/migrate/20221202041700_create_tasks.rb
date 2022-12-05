class CreateTasks < ActiveRecord::Migration[6.1]
  def change
    create_table :tasks do |t|
      t.string :name
      t.text :picture
      t.boolean :done
      t.timestamps
    end
  end
end

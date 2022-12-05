class CreateCauses < ActiveRecord::Migration[6.1]
  def change
    create_table :causes do |t|
      t.string :name
      t.text :picture

      t.timestamps
    end
  end
end

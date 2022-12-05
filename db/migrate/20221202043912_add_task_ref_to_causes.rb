class AddTaskRefToCauses < ActiveRecord::Migration[6.1]
  def change
    add_reference :causes, :task, null: false, foreign_key: true
  end
end

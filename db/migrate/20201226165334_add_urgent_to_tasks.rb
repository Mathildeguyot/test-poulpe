class AddUrgentToTasks < ActiveRecord::Migration[6.0]
  def change
    add_column :tasks, :urgent, :boolean, default: false
  end
end

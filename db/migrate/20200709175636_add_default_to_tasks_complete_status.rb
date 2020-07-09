class AddDefaultToTasksCompleteStatus < ActiveRecord::Migration[6.0]
  def change
    change_column :tasks, :completed_status, :string, :default => false
  end
end

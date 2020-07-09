class AddStatusToTasks < ActiveRecord::Migration[6.0]
  def change
    add_column(:tasks, :completed_status, :boolean)
  end
end

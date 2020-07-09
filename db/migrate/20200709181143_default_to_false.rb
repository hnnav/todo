class DefaultToFalse < ActiveRecord::Migration[6.0]
  def change
    change_column :tasks, :completed_status, :boolean, default: false
  end
end

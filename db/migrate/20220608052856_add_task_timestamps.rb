class AddTaskTimestamps < ActiveRecord::Migration[7.0]
  def change
    add_column :tasks, :created_at, :timestamp
    add_column :tasks, :updated_at, :timestamp
  end
end

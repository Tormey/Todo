class AddColumnsToTasks < ActiveRecord::Migration[5.1]
  def change
    add_column :tasks, :category_id, :string
    add_column :tasks, :—force, :string
  end
end

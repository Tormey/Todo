class ChangeBackColumnType < ActiveRecord::Migration[5.1]
  def change
    # change back the category_id type to string
    change_column :tasks, :category_id, :string
  end
end

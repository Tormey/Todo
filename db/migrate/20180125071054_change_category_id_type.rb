class ChangeCategoryIdType < ActiveRecord::Migration[5.1]
  def change
    # change the category_id column type to integer
    # check whether this is necessary
    change_column :tasks, :category_id, :integer
  end
end

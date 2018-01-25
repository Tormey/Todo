class AddDefalutInboxCategory < ActiveRecord::Migration[5.1]
  # To setup default Inbox category when migrating
  def change
    Category.create :name => 'Inbox', :description => 'Default category'
  end
end

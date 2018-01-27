class Category < ApplicationRecord
    has_many :tasks, dependent: :destroy
    validates :name, presence: true,
                     length: { minimum: 3 }

    # Everytime after deleting a category, create the default Inbox when there is no more category,
    # so that there is still a category for users to choose from
    after_commit :create_default, on: :destroy
    # create a default Inbox category
    def create_default
        unless Category.exists?
            Category.create :name => 'Inbox', :description => 'Default category'
        end
    end
end
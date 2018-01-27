class Task < ApplicationRecord
    belongs_to :category
    validates :task_name, presence: true,
                          length: { minimum: 3 }
end

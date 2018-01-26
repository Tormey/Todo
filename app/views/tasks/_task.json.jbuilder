json.extract! task, :id, :task_name, :deadline, :details, :created_at, :updated_at, :category_id
json.url task_url(task, format: :json)

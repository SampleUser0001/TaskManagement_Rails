json.extract! taskmanager, :id, :title, :memo, :status, :created_at, :updated_at
json.url taskmanager_url(taskmanager, format: :json)

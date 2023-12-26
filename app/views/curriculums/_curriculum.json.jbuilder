json.extract! curriculum, :id, :name, :short_name, :description, :team_id, :created_at, :updated_at
json.url curriculum_url(curriculum, format: :json)

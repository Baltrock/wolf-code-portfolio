json.extract! site_update, :id, :update_title, :update_description, :update_schedule, :admin_id, :created_at, :updated_at
json.url site_update_url(site_update, format: :json)

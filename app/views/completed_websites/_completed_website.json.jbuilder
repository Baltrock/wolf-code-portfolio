json.extract! completed_website, :id, :website_name, :website_description, :completion_period, :admin_id, :created_at, :updated_at
json.url completed_website_url(completed_website, format: :json)

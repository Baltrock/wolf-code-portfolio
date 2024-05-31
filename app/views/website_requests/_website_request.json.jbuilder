json.extract! website_request, :id, :website_name, :why_website, :website_description, :deadline, :user_id, :created_at, :updated_at
json.url website_request_url(website_request, format: :json)

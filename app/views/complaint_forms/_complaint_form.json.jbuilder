json.extract! complaint_form, :id, :complaint_title, :complaint_description, :time_of_event, :user_id, :created_at, :updated_at
json.url complaint_form_url(complaint_form, format: :json)

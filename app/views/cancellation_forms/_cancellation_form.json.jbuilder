json.extract! cancellation_form, :id, :reason_for_cancellation, :user_id, :created_at, :updated_at
json.url cancellation_form_url(cancellation_form, format: :json)

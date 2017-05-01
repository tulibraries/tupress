json.extract! event, :id, :startdate, :enddate, :description, :where, :created_at, :updated_at
json.url event_url(event, format: :json)

json.extract! journal, :id, :title, :url, :created_at, :updated_at
json.url journal_url(journal, format: :json)

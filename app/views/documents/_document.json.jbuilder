json.extract! document, :id, :title, :filename, :department, :format, :created_at, :updated_at
json.url document_url(document, format: :json)

json.extract! item, :id, :caption, :ndate, :tags, :body, :created_at, :updated_at
json.url item_url(item, format: :json)
json.extract! product, :id, :name, :properties, :color, :created_at, :updated_at
json.url product_url(product, format: :json)

json.extract! promotion, :id, :title, :description, :number, :expiration, :created_at, :updated_at
json.url promotion_url(promotion, format: :json)
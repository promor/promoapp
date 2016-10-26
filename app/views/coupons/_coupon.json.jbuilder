json.extract! coupon, :id, :delivered, :promotion_id, :created_at, :updated_at
json.url coupon_url(coupon, format: :json)
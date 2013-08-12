json.array!(@order_items) do |order_item|
  json.extract! order_item, :category_id, :color, :description, :quantity, :unit_price, :price
  json.url order_item_url(order_item, format: :json)
end
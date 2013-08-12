json.array!(@orders) do |order|
  json.extract! order, :client_id, :order_date, :autoship, :send_styleguide, :shipping_type, :special_instructions, :stylist_id
  json.url order_url(order, format: :json)
end
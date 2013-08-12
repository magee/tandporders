json.array!(@consults) do |consult|
  json.extract! consult, :stylist_id, :client_id, :consult_date, :order_id, :state
  json.url consult_url(consult, format: :json)
end
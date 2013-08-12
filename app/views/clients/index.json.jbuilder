json.array!(@clients) do |client|
  json.extract! client, :first_name, :last_name, :email, :address_ship, :address_city, :address_state, :address_zip, :birthday, :username_skype, :stylist_id, :pinterest_board, :budget, :spend_tops, :spend_pants, :height, :bust, :waist_natural, :hips, :size_top, :size_pant, :size_shoe, :style_icon_id, :style_icon_other, :other_info, :referral_source, :avoid, :shape, :referred_by
  json.url client_url(client, format: :json)
end
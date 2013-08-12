class CreateClients < ActiveRecord::Migration
  def change
    create_table :clients do |t|
      t.string :first_name
      t.string :last_name
      t.string :email
      t.string :address_ship
      t.string :address_city
      t.string :address_state
      t.string :address_zip
      t.date :birthday
      t.string :username_skype
      t.integer :stylist_id
      t.string :pinterest_board
      t.integer :budget
      t.integer :spend_tops
      t.integer :spend_pants
      t.string :height
      t.decimal :bust
      t.decimal :waist_natural
      t.decimal :hips
      t.string :size_top
      t.string :size_pant
      t.string :size_shoe
      t.integer :style_icon_id
      t.string :style_icon_other
      t.text :other_info
      t.string :referral_source
      t.text :avoid
      t.string :shape
      t.string :referred_by

      t.timestamps
    end
  end
end

class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.integer :client_id
      t.date :order_date
      t.boolean :autoship
      t.boolean :send_styleguide
      t.string :shipping_type
      t.text :special_instructions
      t.integer :stylist_id
      t.integer :state
      t.index :state

      t.timestamps
    end
  end
end

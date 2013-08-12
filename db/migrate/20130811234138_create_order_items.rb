class CreateOrderItems < ActiveRecord::Migration
  def change
    create_table :order_items do |t|
      t.integer :category_id
      t.string :color
      t.string :description
      t.integer :quantity
      t.decimal :unit_price
      t.decimal :price

      t.timestamps
    end
  end
end

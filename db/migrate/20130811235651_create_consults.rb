class CreateConsults < ActiveRecord::Migration
  def change
    create_table :consults do |t|
      t.integer :stylist_id
      t.integer :client_id
      t.date :consult_date
      t.integer :order_id
      t.integer :state

      t.timestamps
    end
  end
end

class CreateOrders < ActiveRecord::Migration[6.1]
  def change
    create_table :orders do |t|
      t.integer :product_id
      t.integer :customer_id
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end

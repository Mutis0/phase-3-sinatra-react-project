class CreateProducts < ActiveRecord::Migration[6.1]
  def change
    create_table :products do |t|
      t.string :name
      t.decimal :price, precision: 10, scale: 2
      t.string :description
      t.string :img
      t.references :category, null: true, foreign_key: true

      t.timestamps
    end
  end
end

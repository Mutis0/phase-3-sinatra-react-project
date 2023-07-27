class CreateProducts < ActiveRecord::Migration[6.1]
  def change
    create_table :products do |t|
      t.string :name
      t.string :image_url
      t.integer :price
      t.integer :category_id
      t.string :description

      t.timestamps
    end
  end
end

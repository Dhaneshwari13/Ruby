class CreateProduct1s < ActiveRecord::Migration[8.1]
  def change
    create_table :product1s do |t|
      t.string :name
      t.text :description
      t.decimal :price
      t.decimal :stock
      t.integer :stock

      t.timestamps
    end
  end
end

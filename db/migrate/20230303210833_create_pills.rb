class CreatePills < ActiveRecord::Migration[6.1]
  def change
    create_table :pills do |t|
      t.integer :vitamin_id
      t.integer :owner_id
      t.string :brand
      t.string :description
      t.string :ingredients
      t.integer :quantity
      t.integer :upc
      t.string :order_more
      t.integer :pill_takens_count

      t.timestamps
    end
  end
end

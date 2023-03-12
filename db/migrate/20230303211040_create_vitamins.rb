class CreateVitamins < ActiveRecord::Migration[6.1]
  def change
    create_table :vitamins do |t|
      t.integer :amount_per_serving

      t.timestamps
    end
  end
end

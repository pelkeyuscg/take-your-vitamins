class CreatePillTakens < ActiveRecord::Migration[6.1]
  def change
    create_table :pill_takens do |t|
      t.integer :pill_id
      t.integer :quantity

      t.timestamps
    end
  end
end

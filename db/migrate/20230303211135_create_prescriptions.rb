class CreatePrescriptions < ActiveRecord::Migration[6.1]
  def change
    create_table :prescriptions do |t|
      t.integer :frequency
      t.integer :pill_id
      t.integer :owner_id

      t.timestamps
    end
  end
end

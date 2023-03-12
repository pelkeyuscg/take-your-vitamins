class AddNametoVitamin < ActiveRecord::Migration[6.1]
  def change
    add_column :vitamins, :vitamin_id, :integer
  end
end

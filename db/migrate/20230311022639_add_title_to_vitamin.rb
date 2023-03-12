class AddTitleToVitamin < ActiveRecord::Migration[6.1]
  def change
    add_column :vitamins, :name, :string
  end
end

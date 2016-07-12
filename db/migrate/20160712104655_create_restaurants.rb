class CreateRestaurants < ActiveRecord::Migration
  def change
    create_table :restaurants do |t|
      t.string :name
      t.string :description
      t.integer :avgrating

      t.timestamps null: false
    end
  end
end
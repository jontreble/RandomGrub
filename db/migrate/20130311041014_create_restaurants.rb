class CreateRestaurants < ActiveRecord::Migration
  def change
    create_table :restaurants do |t|
      t.integer :cust_id
      t.string :name

      t.timestamps
    end
  end
end

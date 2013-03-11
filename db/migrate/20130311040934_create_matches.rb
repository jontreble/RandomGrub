class CreateMatches < ActiveRecord::Migration
  def change
    create_table :matches do |t|
      t.integer :date_id
      t.integer :user1_id
      t.integer :user2_id
      t.integer :restaurant_id
      t.string :groupnoms_link

      t.timestamps
    end
  end
end

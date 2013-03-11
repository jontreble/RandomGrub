class CreateLunchDateParticipants < ActiveRecord::Migration
  def change
    create_table :lunch_date_participants do |t|
      t.integer :lunch_date_id
      t.integer :user_id

      t.timestamps
    end
  end
end

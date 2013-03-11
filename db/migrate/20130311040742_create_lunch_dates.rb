class CreateLunchDates < ActiveRecord::Migration
  def change
    create_table :lunch_dates do |t|
      t.datetime :lunch_date
      t.datetime :cutoff_date

      t.timestamps
    end
  end
end

class CreateTrips < ActiveRecord::Migration[5.1]
  def change
    create_table :trips do |t|
      t.integer :trip_id
      t.integer :driver_id
      t.integer :passenger_id
      t.string :date
      t.integer :rating
      t.float :cost
      t.timestamps
    end
  end
end

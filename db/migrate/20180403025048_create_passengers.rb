class CreatePassengers < ActiveRecord::Migration[5.1]
  def change
    create_table :passengers do |t|
      t.integer :passenger_id
      t.string :name
      t.string :phone_number

      t.timestamps
    end
  end
end

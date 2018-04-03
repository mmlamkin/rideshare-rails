class CreateDrivers < ActiveRecord::Migration[5.1]
  def change
    create_table :drivers do |t|
      t.integer :driver_id
      t.string :name
      t.string :vin

      t.timestamps
    end
  end
end

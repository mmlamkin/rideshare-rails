class RemoveDriverId < ActiveRecord::Migration[5.1]
  def change
    remove_column :drivers, :driver_id
  end
end

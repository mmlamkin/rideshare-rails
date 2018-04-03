class RemovePassengerId < ActiveRecord::Migration[5.1]
  def change
    remove_column :passengers, :passenger_id
  end
end

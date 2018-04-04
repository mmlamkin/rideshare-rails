class Trip < ApplicationRecord
  belongs_to :driver
  belongs_to :passenger

  validates :driver_id, presence: true
  validates :passenger_id, presence: true

  def create_trip(pass_id)
    @trip = Trip.new
    @trip.driver_id = Driver.all.sample.id
    @trip.passenger_id = pass_id
    @trip.date = Time.now
  end
end

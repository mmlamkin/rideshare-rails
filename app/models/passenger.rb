class Passenger < ApplicationRecord
  has_many :trips
  validates :name, presence: true
  validates :phone_number, presence: true

  def overall_spending(id)
    spending_total = 0
    Passenger.find_by(id:id).trips.each do |trip|
      unless trip.cost.nil?
        spending_total += trip.cost
      end
    end
    (spending_total / 100).round(2)
  end


end

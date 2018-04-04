class Driver < ApplicationRecord
  has_many :trips
  validates :name, presence: true
  validates :vin, presence: true

  def overall_earnings(id)
    revenue_total = 0
    Driver.find_by(id:id).trips.each do |trip|
      revenue_total += trip.cost
    end
    earnings = (((revenue_total - 1.65) * 0.8) / 100 ).round(2)
  end

  def average_rating(id)
    ratings_total = 0
    @driver = Driver.find_by(id:id)
    @driver.trips.each do |trip|
      ratings_total += trip.rating.to_f
    end
    ratings_average = (ratings_total / @driver.trips.count).round(1)
  end
end

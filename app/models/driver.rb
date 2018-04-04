class Driver < ApplicationRecord
  has_many :trips
  validates :name, presence: true
  validates :vin, presence: true

  def overall_earnings
    accum = 0
    @driver.trips.each do |trip|
      accum += trip.cost
    end
    earnings = (accum - 1.65) * 0.8
  end

  def average_rating
    ratings_total = 0
    @driver.trips.each do |trip|
      ratings_total += trip.rating
    end
    ratings_average = ratings_total / @driver.trips.count
  end
end

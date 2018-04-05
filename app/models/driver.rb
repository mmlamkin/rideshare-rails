class Driver < ApplicationRecord
  has_many :trips
  validates :name, presence: true
  validates :vin, presence: true

  def overall_earnings(id)
    revenue_total = 0
    Driver.find_by(id:id).trips.each do |trip|
      unless trip.cost.nil?
        revenue_total += trip.cost
      end
    end
    if revenue_total <= 1.65
      return 0
    else
      earnings = "$ #{(((revenue_total - 1.65) * 0.8) / 100 ).round(2)}"
    end
  end

  def average_rating(id)
    ratings_total = 0
    @driver = Driver.find_by(id:id)
    @driver.trips.each do |trip|
      unless trip.rating.nil?
        ratings_total += trip.rating.to_f
      end
    end
    if @driver.trips.count == 0
      ratings_average = "No ratings yet"
    else
      ratings_average = (ratings_total / @driver.trips.count).round(1)
      return "#{ratings_average} stars"
    end
  end
end

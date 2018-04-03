class Driver < ApplicationRecord
  has_many :trips
  validates :name, presence: true
  validates :vin, length: { is: 17 }
end

class Pull < ApplicationRecord
  SIZES = ["XS", "S", "M", "L", "XL", "XXL"]

  has_many :bookings
  has_many :users, through: :bookings

  validates :title, presence: true
  validates :description, presence: true
  validates :size, presence: true, inclusion: { in: SIZES }
  validates :price, presence: true
end

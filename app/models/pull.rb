class Pull < ApplicationRecord
  SIZES = ["XS", "S", "M", "L", "XL", "XXL"]

  has_many :bookings, dependent: :destroy
  belongs_to :user
  has_one_attached :photo

  validates :title, presence: true
  validates :description, presence: true
  validates :size, presence: true, inclusion: { in: SIZES }
  validates :price, presence: true
  validates :photo, presence: true
end

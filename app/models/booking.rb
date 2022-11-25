class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :pull
  validates :user_id, presence: true
  validates :pull_id, presence: true
  validates :start_date, presence: true
  validates :end_date, presence: true

  def self.amount_of_one(booking)
    calcul = ((booking.end_date - booking.start_date + 1) * booking.pull.price).to_i
    return calcul
  end

  def self.amount_all(bookings)
    total = 0
    bookings.each do |booking|
      total += Booking.amount_of_one(booking)
    end
    total
  end
end

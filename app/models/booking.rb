class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :pull
  validates :user_id, presence: true
  validates :pull_id, presence: true
  validates :start_date, presence: true
  validates :end_date, presence: true

  def self.amount(booking)
    calcul = ((booking.end_date - booking.start_date) * booking.pull.price).to_i
    return calcul
  end
end

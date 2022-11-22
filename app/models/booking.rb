class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :pull
  validates :user_id, presence: true
  validates :pull_id, presence: true
  validates :start_date, presence: true
  validates :end_date, presence: true
end

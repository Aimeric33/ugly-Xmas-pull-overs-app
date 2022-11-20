class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :pull
end

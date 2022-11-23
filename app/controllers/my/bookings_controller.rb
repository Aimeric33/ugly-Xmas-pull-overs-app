class My::BookingsController < ApplicationController
  def index
    @pulls = current_user.pulls
    @bookings = Booking.where(pull_id: @pulls)
  end
end

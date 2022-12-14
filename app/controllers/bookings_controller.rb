class BookingsController < ApplicationController
  before_action :set_pull, only: [:create]

  def index
    @bookings = Booking.where(user_id: current_user)
  end

  def create
    @booking = Booking.new(params_booking)
    @booking.pull = @pull
    @booking.user = current_user

    if @booking.save
      redirect_to bookings_path
    else
      render "pulls/show", status: :unprocessable_entity
    end
  end

  def gain
    amount = (self.end_date - self.start_date).to_i * self.pull.price
    return amount
  end

  private

  def params_booking
    params.require(:booking).permit(:start_date, :end_date)
  end

  def set_pull
    @pull = Pull.find(params[:pull_id])
  end
end

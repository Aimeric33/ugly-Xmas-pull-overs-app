class BookingsController < ApplicationController
  before_action :set_pull, only: [:create]
  before_action :set_user, only: [:create]

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

  private

  def params_booking
    params.require(:booking).permit(:start_date, :end_date)
  end

  def set_pull
    @pull = Pull.find(params[:pull_id])
  end

  def set_user
    @user = User.find(params[:user_id])
  end
end

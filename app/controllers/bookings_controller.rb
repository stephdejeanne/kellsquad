class BookingsController < ApplicationController
  def index
    @bookings = Booking.all
  end

  def create
    @booking = Booking.new(params[:booking])
    @booking.save
    redirect_to booking_path(@booking)
  end

  private

  def restaurant_params
    params.require(:booking).permit(:user_id, :quad_id)
  end
end

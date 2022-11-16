class BookingsController < ApplicationController
  def index
    @bookings = Booking.all
  end

  def new
    @quad = Quad.find(params[:quad_id])
    @booking = Booking.new
  end
  def show
    @booking = Booking.find(params[:id])
  end

  def create
    @quad = Quad.find(params[:quad_id])
    arg = booking_params
    arg[:user_id] = current_user.id
    arg[:quad_id] = params[:quad_id]
    @booking = Booking.new(arg)
    if @booking.save!
      redirect_to quad_bookings(@booking)
    else
      render :new
    end
  end

  private
  def set_quad
    @quad = Quad.find(params[:quad_id])
  end

  def booking_params
    params.require(:booking).permit(:start, :end)
  end
end

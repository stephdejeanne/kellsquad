class BookingsController < ApplicationController
  before_action :set_quad, only: [:new, :create, :show]
  def index
    # @quad = Quad.find(params[:quad_id])
    @bookings = Booking.all
  end

  def new
    @booking = Booking.new
  end
  def show
    @booking = Booking.find(params[:id])
  end

  def create
    @quad = Quad.find(params[:quad_id])
    @booking = Booking.new(booking_params)
    @booking.quad = @quad
    @booking.user = current_user
    if @booking.save
      redirect_to root_path
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

  def set_booking
    @booking = Booking.find(params[:id])
  end
end

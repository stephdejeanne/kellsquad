class ReviewsController < ApplicationController
  def create
    @review = Review.new(review_params)
    @quad = quad.find(params[:quad_id])
    @review.quad = @quad
    if @review.save
      redirect_to quad_path(@quad)
    else
      @booking = Booking.new
      render 'quads/show', status: :unprocessable_entity
    end
  end

  def destroy
    @review = Review.find(params[:id])
    @review.destroy
    redirect_to quad_path(@review.quad)
  end

  private

  def review_params
    params.require(:review).permit(:comment, :rating)
  end
end

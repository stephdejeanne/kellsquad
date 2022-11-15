class ReviewsController < ApplicationController
  def create
    @review = Review.new(review_params)
    @quad = List.find(params[:quad_id])
    @review.list = @list
    if @review.save
      redirect_to list_path(@list)
    else
      @booking = Booking.new
      render 'quads/show', status: :unprocessable_entity
    end
  end

  def destroy
    @review = Review.find(params[:id])
    @review.destroy
    redirect_to list_path(@review.list)
  end

  private

  def review_params
    params.require(:review).permit(:comment, :rating)
  end
end

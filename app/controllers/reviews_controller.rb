class ReviewsController < ApplicationController
  def create
    @review = Review.new(review_params)
<<<<<<< HEAD
    @quad = List.find(params[:quad_id])
=======
    @list = List.find(params[:list_id])
>>>>>>> fe8f61f81dcbbc8800ce7a19d728e52aff48f901
    @review.list = @list
    if @review.save
      redirect_to list_path(@list)
    else
<<<<<<< HEAD
      @booking = Booking.new
      render 'quads/show', status: :unprocessable_entity
=======
      @bookmark = Bookmark.new
      render 'lists/show', status: :unprocessable_entity
>>>>>>> fe8f61f81dcbbc8800ce7a19d728e52aff48f901
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

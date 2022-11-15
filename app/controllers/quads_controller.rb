class QuadsController < ApplicationController
  before_action :set_quad, only: [:show, :destroy]

  def index
    @quads = Quad.all
  end

  def show
    @pages = Pages.new
    @review = Review.new(quad: @quad)
  end

  def new
    @quad = Quad.new
  end

  def create
    @list = Quad.new(quad_params)
    if @quad.save
      redirect_to quad_path(@quad)
    else
      render :new, status: :unprocessable_entity
    end
  end

  def destroy
    @quad.destroy
    redirect_to quads_path, status: :see_other
  end

  private

  def set_quad
    @quad = Quad.find(params[:id])
  end

  def quad_params
    params.require(:quad).permit(:name, :photo)
  end
end

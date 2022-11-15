class QuadsController < ApplicationController
  before_action :set_quad, only: [:show]
  def index
    @quads = Quad.all
  end

  def show
    # @quad = Quad.new
  end

  private

  def set_quad
    @quad = Quad.find(params[:id])
  end
end

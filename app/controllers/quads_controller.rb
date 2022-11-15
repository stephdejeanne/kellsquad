class QuadsController < ApplicationController
  def index
    @quads = Quad.all
  end
  def show
    @quad = Quad.find(params[:id])
  end
end

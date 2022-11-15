class QuadsController < ApplicationController
  def index
    @quads = Quad.all
  def show
    @quad = Quad.find(params[:id])
  end
end

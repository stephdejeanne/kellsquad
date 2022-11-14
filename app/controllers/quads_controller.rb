class QuadsController < ApplicationController
  def show
    @quad = Quad.find(params[:id])
  end
end

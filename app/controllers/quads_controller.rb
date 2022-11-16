class QuadsController < ApplicationController
  before_action :set_quad, only: [:show]

  def index
    @quads = Quad.all
  end

  def show
    # @quad = Quad.new
    @quads = Quad.all
    @markers = @quads.geocoded.map do |quad|
      {
        lat: quad.latitude,
        lng: quad.longitude,
        info_window: render_to_string(partial: "info_window", locals: {quad: quad})
      }
    end
  end

  private

  def set_quad
    @quad = Quad.find(params[:id])
  end
end

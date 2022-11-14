class QuadsController < ApplicationController
  def index
    @quads = Quad.all
  end
end

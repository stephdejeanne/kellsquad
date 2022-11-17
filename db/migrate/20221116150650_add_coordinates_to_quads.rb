class AddCoordinatesToQuads < ActiveRecord::Migration[7.0]
  def change
    add_column :quads, :latitude, :float
    add_column :quads, :longitude, :float
  end
end

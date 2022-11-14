class CreateQuads < ActiveRecord::Migration[7.0]
  def change
    create_table :quads do |t|
      t.string :name
      t.string :color
      t.integer :power

      t.timestamps
    end
  end
end

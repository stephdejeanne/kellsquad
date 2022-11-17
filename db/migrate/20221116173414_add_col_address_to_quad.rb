class AddColAddressToQuad < ActiveRecord::Migration[7.0]
  def change
    add_column :quads, :address, :string
  end
end

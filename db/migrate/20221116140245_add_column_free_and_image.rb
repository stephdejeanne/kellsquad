class AddColumnFreeAndImage < ActiveRecord::Migration[7.0]
  def change
    add_column :quads, :free, :boolean
    add_column :quads, :img, :string
  end
end

class AddLocationVlan < ActiveRecord::Migration[5.2]
  def change
    add_column :vlans, :location, :string

  end
end

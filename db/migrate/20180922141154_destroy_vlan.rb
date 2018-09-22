class DestroyVlan < ActiveRecord::Migration[5.2]
  def change
    drop_table :Vlans
  end
end

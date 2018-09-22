class AddIpaddressVlan < ActiveRecord::Migration[5.2]
  def change
    add_column :vlans, :ip_address, :string
      
  end
end

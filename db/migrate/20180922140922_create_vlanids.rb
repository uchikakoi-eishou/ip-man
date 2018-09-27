class CreateVlanids < ActiveRecord::Migration[5.2]
  def change
    create_table :vlanids do |t|
      t.integer :ip_address0
      t.integer :ip_address1
      t.integer :ip_address2
      t.integer :ip_address3
      t.string :location
      t.integer :control_number
      t.string :user
      t.string :use
      t.timestamps
    end
  end
end

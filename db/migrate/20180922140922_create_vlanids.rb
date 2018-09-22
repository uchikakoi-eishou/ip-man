class CreateVlanids < ActiveRecord::Migration[5.2]
  def change
    create_table :vlanids do |t|
      t.string :ip_address
      t.string :location
      t.integer :control_number
      t.string :user
      t.string :use

      t.timestamps
    end
  end
end

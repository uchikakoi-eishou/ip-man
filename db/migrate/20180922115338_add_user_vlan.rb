class AddUserVlan < ActiveRecord::Migration[5.2]
  def change
    add_column :vlans, :user, :string

  end
end

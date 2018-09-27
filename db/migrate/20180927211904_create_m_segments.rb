class CreateMSegments < ActiveRecord::Migration[5.2]
  def change
    create_table :m_segments do |t|
      t.integer :ip_address0
      t.integer :ip_address1
      t.integer :ip_address2
      t.string :use
      t.timestamps
    end
  end
end

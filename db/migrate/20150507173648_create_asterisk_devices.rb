class CreateAsteriskDevices < ActiveRecord::Migration
  def change
    create_table :asterisk_devices do |t|
      t.string :description
      t.string :location
      t.string :secret
      t.references :asterisk_user, index: true
      t.string :admin_password
      t.string :mac_address
      t.string :account_code
      t.string :associated_user

      t.timestamps
    end
  end
end

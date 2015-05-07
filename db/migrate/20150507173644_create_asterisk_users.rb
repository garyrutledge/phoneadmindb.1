class CreateAsteriskUsers < ActiveRecord::Migration
  def change
    create_table :asterisk_users do |t|
      t.string :prefix
      t.string :extension
      t.string :did
      t.string :display_name
      t.string :password
      t.string :voicemail_enabled
      t.string :voicemail_password
      t.string :email
      t.string :faxenabled
      t.references :asterisk_call_group, index: true

      t.timestamps
    end
  end
end

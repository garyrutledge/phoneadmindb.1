class CreateAsteriskVoicemailBoxes < ActiveRecord::Migration
  def change
    create_table :asterisk_voicemail_boxes do |t|
      t.string :prefix
      t.string :extension
      t.string :did
      t.string :display_name
      t.references :asterisk_user, index: true
      t.string :password
      t.string :email

      t.timestamps
    end
  end
end

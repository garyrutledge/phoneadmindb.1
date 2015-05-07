json.array!(@asterisk_voicemail_boxes) do |asterisk_voicemail_box|
  json.extract! asterisk_voicemail_box, :id, :prefix, :extension, :did, :display_name, :asterisk_user_id, :password, :email
  json.url asterisk_voicemail_box_url(asterisk_voicemail_box, format: :json)
end

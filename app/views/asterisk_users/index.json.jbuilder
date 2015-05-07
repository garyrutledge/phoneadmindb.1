json.array!(@asterisk_users) do |asterisk_user|
  json.extract! asterisk_user, :id, :prefix, :extension, :did, :display_name, :password, :voicemail_enabled, :voicemail_password, :email, :faxenabled, :asterisk_call_group_id
  json.url asterisk_user_url(asterisk_user, format: :json)
end

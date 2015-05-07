json.array!(@asterisk_devices) do |asterisk_device|
  json.extract! asterisk_device, :id, :description, :location, :secret, :asterisk_user_id, :admin_password, :mac_address, :account_code, :associated_user
  json.url asterisk_device_url(asterisk_device, format: :json)
end

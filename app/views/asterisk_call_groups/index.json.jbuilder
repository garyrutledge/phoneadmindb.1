json.array!(@asterisk_call_groups) do |asterisk_call_group|
  json.extract! asterisk_call_group, :id, :group, :members
  json.url asterisk_call_group_url(asterisk_call_group, format: :json)
end

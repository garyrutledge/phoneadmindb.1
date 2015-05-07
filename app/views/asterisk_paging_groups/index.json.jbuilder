json.array!(@asterisk_paging_groups) do |asterisk_paging_group|
  json.extract! asterisk_paging_group, :id, :paging_extension, :name, :members
  json.url asterisk_paging_group_url(asterisk_paging_group, format: :json)
end

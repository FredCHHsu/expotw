json.array!(@assistances) do |assistance|
  json.extract! assistance, :id, :group, :title, :name
  json.url assistance_url(assistance, format: :json)
end

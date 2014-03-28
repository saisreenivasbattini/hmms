json.array!(@eusers) do |euser|
  json.extract! euser, :id, :name, :email, :login
  json.url euser_url(euser, format: :json)
end

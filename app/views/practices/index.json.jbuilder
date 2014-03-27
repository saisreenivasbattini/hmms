json.array!(@practices) do |practice|
  json.extract! practice, :id, :name, :code
  json.url practice_url(practice, format: :json)
end

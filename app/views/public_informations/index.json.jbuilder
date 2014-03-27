json.array!(@public_informations) do |public_information|
  json.extract! public_information, :id, :practice_name, :avg_annual_collection, :avg_annual_visits, :state_id, :region_id
  json.url public_information_url(public_information, format: :json)
end

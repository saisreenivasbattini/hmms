json.array!(@public_infos) do |public_info|
  json.extract! public_info, :id, :practice_name, :avg_annual_collection, :avg_annual_visits
  json.url public_info_url(public_info, format: :json)
end

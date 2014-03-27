json.array!(@listings) do |listing|
  json.extract! listing, :id, :state, :region, :type_of_practice, :average_annual_collections, :average_annual_visits, :street_address, :city, :state, :zip, :phone, :email, :low, :high, :user_id
  json.url listing_url(listing, format: :json)
end

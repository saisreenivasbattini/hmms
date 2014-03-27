json.array!(@confidential_infos) do |confidential_info|
  json.extract! confidential_info, :id, :practice_name, :address1, :address2, :city, :state, :phone, :email, :qualified_info_id
  json.url confidential_info_url(confidential_info, format: :json)
end

json.array!(@qualified_infos) do |qualified_info|
  json.extract! qualified_info, :id, :asking_price, :physician_net_amount, :public_information_id
  json.url qualified_info_url(qualified_info, format: :json)
end

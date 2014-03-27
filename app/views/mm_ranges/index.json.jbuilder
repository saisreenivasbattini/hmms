json.array!(@mm_ranges) do |mm_range|
  json.extract! mm_range, :id, :low, :high
  json.url mm_range_url(mm_range, format: :json)
end

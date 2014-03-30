json.array!(@profiles) do |profile|
  json.extract! profile, :id, :email, :first_name, :last_name, :type_of_doctor, :licence_no, :password
  json.url profile_url(profile, format: :json)
end

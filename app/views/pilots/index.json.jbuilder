json.array!(@pilots) do |pilot|
  json.extract! pilot, :id, :firstname, :lastname, :email, :city, :phone
  json.url pilot_url(pilot, format: :json)
end

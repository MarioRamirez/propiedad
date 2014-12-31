json.array!(@real_estates) do |real_estate|
  json.extract! real_estate, :id, :price, :description, :state, :address, :longitude, :latitude, :kind, :user
  json.url real_estate_url(real_estate, format: :json)
end

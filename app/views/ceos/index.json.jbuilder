json.array!(@ceos) do |ceo|
  json.extract! ceo, :name, :email
  json.url ceo_url(ceo, format: :json)
end
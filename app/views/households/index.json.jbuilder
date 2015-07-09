json.array!(@households) do |household|
  json.extract! household, :id
  json.url household_url(household, format: :json)
end

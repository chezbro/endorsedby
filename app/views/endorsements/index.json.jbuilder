json.array!(@endorsements) do |endorsement|
  json.extract! endorsement, :id, :celeb_id, :brand, :amount, :contract, :image
  json.url endorsement_url(endorsement, format: :json)
end

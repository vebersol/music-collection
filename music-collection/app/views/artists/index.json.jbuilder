json.array!(@artists) do |artist|
  json.extract! artist, :id, :name, :country, :picture
  json.url artist_url(artist, format: :json)
end

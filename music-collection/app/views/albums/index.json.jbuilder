json.array!(@albums) do |album|
  json.extract! album, :id, :title, :description, :cover, :released, :artist, :genre
  json.url album_url(album, format: :json)
end

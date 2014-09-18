class AddArtistReferenceToAlbum < ActiveRecord::Migration
  def change
  	remove_column :albums, :artist
  	add_column :albums, :artist_id, :integer
  	add_index :albums, :artist_id
  end
end

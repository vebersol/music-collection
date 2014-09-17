class CreateAlbums < ActiveRecord::Migration
  def change
    create_table :albums do |t|
      t.string :title
      t.text :description
      t.string :cover
      t.date :released
      t.string :artist
      t.string :genre

      t.timestamps
    end
  end
end

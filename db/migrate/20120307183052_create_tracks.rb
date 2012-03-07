class CreateTracks < ActiveRecord::Migration
  def change
    create_table :tracks do |t|
      t.string :album
      t.string :artist
      t.string :track
      t.string :album_art_url
      t.string :track_mp3_url

      t.timestamps
    end
  end
end

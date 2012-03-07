class CreateMusics < ActiveRecord::Migration
  def change
    create_table :musics do |t|
      t.string :album
      t.string :artist
      t.string :album_art_url
      t.string :track
      t.string :track_audio_url

      t.timestamps
    end
  end
end

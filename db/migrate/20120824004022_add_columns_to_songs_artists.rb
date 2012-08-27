class AddColumnsToSongsArtists < ActiveRecord::Migration
  def change
    add_column :songs_artists, :song_id, :integer
    add_column :songs_artists, :artist_id, :integer
  end
end

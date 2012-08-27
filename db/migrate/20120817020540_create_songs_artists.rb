class CreateSongsArtists < ActiveRecord::Migration
  def change
    create_table :songs_artists do |t|

      t.timestamps
    end
  end
end

class Artist < ActiveRecord::Base
  attr_accessible :name

  has_many :songs_artists
  has_many :songs, through: :songs_artists

end

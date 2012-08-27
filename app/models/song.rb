class Song < ActiveRecord::Base
  attr_accessible :length, :title

  validates :title,  :presence => true
  validates :length, :presence => true,
                    :length => { :minimum => 4, :maximum => 5}

  has_many :songs_artists
  has_many :artists, through: :songs_artists

end

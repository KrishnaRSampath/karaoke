class Song < ActiveRecord::Base
  attr_accessible :length, :title

  validates :title,  :presence => true
  validates :length, :presence => true,
                    :length => { :minimum => 4, :maximum => 5}

  has_many :recordings
  has_many :artists, through: :recordings

  accepts_nested_attributes_for :artists
end

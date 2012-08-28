class Artist < ActiveRecord::Base
  attr_accessible :name

  validates :name,  :presence => true

  has_many :recordings
  has_many :songs, through: :recordings

  #accepts_nested_attributes_for :artists
end

class Animal < ApplicationRecord
  # Animal is capitalized and singular because that name of database
  # sightings is plural
  has_many :sightings
end

class Sighting < ApplicationRecord
  #Sighting uppercase singular is the name of that database
  # animal is singular
  belongs_to :animal
end

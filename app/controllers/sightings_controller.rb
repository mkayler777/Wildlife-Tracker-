class SightingsController < ApplicationController

#go find everything - get a list of all the sightings in a particular time range
def index
  sightings = Sighting.all
  render json: sightings
end

#method - to show one sighting by id
def show
  sighting = Sighting.find(params[:id])
  render json: sighting
end

#method - changing an existing sighting in the database
#update an existing database entry
def update
  #find
  sighting = Sighting.find(params[:id])
  #update - call the params method to check for appropriate data
  sighting.update_attributes(sighting_params)
  #if the sighting is created return the sighting info
  if sighting.valid?
    render json:sighting
    # if the sighting is not created retrn an error
  else
    render json: sighting.errors
  end
end

#another method - destroying an existing sighting in the database
def destroy
  #find
  sighting = Sighting.find(params[:id])
  #destroy
  if sighting.destroy
    render json:sighting
  else
    render json:sighting.errors
  end
end

#setting params for the update method
def sighting_params
  params.require(:sighting).permit(:date, :latitude, :longitude)
  end
end

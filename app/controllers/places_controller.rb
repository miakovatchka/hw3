class PlacesController < ApplicationController
  def index
    @places = Place.all
end

def show
  @place = Place.find(params["id"])
  @entries = Entry.where({"places_id" => @place["id"]})
end

def new 
  @place = Place.new
  @entries = Entry.find_by({"id" => params["place_id"]})
end

def create
@place = Place.new
  @place["name"] = params["name"]
  @place.save
  redirect_to "/places"
  end
end

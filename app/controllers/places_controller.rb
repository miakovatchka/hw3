class PlacesController < ApplicationController
  def index
    @places = Place.all
end

def show
  @entry = Entry.find_by({"id" => params["id"]})
  @place = Place.find_by({ "id" => @entry["place_id"] })
end

def new 
  @place = Place.new
  @entry = Entry.find_by({"id" => params["place_id"]})
end

def create
@place = Place.new
  @place["name"] = params["name"]
  @place.save
  redirect_to "/places"
  end
end

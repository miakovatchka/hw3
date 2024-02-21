class EntriesController < ApplicationController
  def index
    @entries = Entry.all
end

def show
  @places = Place.find_by({"id" => params["id"]})
  @entries = Entry.find_by({"id" => @entries["place_id"]})
end

def new 
  @entries = Entry.new
  @place = Place.find_by({"id" => params["places_id"]})
end

def create
@entry = Entry.new
@entry["place_id"] = params["place_id"]
  @entry["title"] = params["title"]
  @entry["description"] = params["description"]
  @entry["created_at"] = params["created_at"]
  @entry["updated_at"] = params["updated_at"]
  @entry["place_id"] = params["place_id"]
  @entry.save
  redirect_to "/places/#{@entry["place_id"]}"
  end
end

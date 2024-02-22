class EntriesController < ApplicationController
def new 
  @entry = Entry.new
  @place = Place.find_by({"id" => params["place_id"]})
end

def create
@entry = Entry.new
@entry["place_id"] = params["place_id"]
  @entry["title"] = params["title"]
  @entry["description"] = params["description"]
  @entry["created_at"] = params["created_at"]
  @entry["updated_at"] = params["updated_at"]
  @entry.save
  redirect_to "/places/#{@entry["place_id"]}"
end
end


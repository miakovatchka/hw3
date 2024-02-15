class EntriesController < ApplicationController
  def index
    @entries = Entry.all
end

def show
  @entries = Entry.find_by({"id" => params["id"]})
end

def new 
  @entries = Entry.new
  @entries["place_id"] = params["place_id"]
end

def create
@entries = Entry.new
  @entries["title"] = params["title"]
  @entries["description"] = params["description"]
  @entries["created_at"] = params["created_at"]
  @entries["updated_at"] = params["updated_at"]
  @entries.save
  redirect_to "/places"
  end
end

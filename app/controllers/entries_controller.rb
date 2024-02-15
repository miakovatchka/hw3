class EntriesController < ApplicationController
  def index
    @entries = Entry.all
end

def show
  @entries = Entry.find_by({"id" => params["id"]})
end

def new 
  @entries = Entry.new
end

def create
@entries = Entry.new
  @entries["name"] = params["name"]
  @entries["created_at"] = params["created_at"]
  @entries["updated_at"] = params["updated_at"]
  @entries.save
  redirect_to "/places"
  end
end

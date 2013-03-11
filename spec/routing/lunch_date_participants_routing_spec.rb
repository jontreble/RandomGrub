require "spec_helper"

describe LunchDateParticipantsController do
  describe "routing" do

    it "routes to #index" do
      get("/lunch_date_participants").should route_to("lunch_date_participants#index")
    end

    it "routes to #new" do
      get("/lunch_date_participants/new").should route_to("lunch_date_participants#new")
    end

    it "routes to #show" do
      get("/lunch_date_participants/1").should route_to("lunch_date_participants#show", :id => "1")
    end

    it "routes to #edit" do
      get("/lunch_date_participants/1/edit").should route_to("lunch_date_participants#edit", :id => "1")
    end

    it "routes to #create" do
      post("/lunch_date_participants").should route_to("lunch_date_participants#create")
    end

    it "routes to #update" do
      put("/lunch_date_participants/1").should route_to("lunch_date_participants#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/lunch_date_participants/1").should route_to("lunch_date_participants#destroy", :id => "1")
    end

  end
end

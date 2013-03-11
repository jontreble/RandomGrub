require "spec_helper"

describe LunchDatesController do
  describe "routing" do

    it "routes to #index" do
      get("/lunch_dates").should route_to("lunch_dates#index")
    end

    it "routes to #new" do
      get("/lunch_dates/new").should route_to("lunch_dates#new")
    end

    it "routes to #show" do
      get("/lunch_dates/1").should route_to("lunch_dates#show", :id => "1")
    end

    it "routes to #edit" do
      get("/lunch_dates/1/edit").should route_to("lunch_dates#edit", :id => "1")
    end

    it "routes to #create" do
      post("/lunch_dates").should route_to("lunch_dates#create")
    end

    it "routes to #update" do
      put("/lunch_dates/1").should route_to("lunch_dates#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/lunch_dates/1").should route_to("lunch_dates#destroy", :id => "1")
    end

  end
end

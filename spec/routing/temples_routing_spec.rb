require "spec_helper"

describe TemplesController do
  describe "routing" do

    it "routes to #index" do
      get("/temples").should route_to("temples#index")
    end

    it "routes to #new" do
      get("/temples/new").should route_to("temples#new")
    end

    it "routes to #show" do
      get("/temples/1").should route_to("temples#show", :id => "1")
    end

    it "routes to #edit" do
      get("/temples/1/edit").should route_to("temples#edit", :id => "1")
    end

    it "routes to #create" do
      post("/temples").should route_to("temples#create")
    end

    it "routes to #update" do
      put("/temples/1").should route_to("temples#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/temples/1").should route_to("temples#destroy", :id => "1")
    end

  end
end

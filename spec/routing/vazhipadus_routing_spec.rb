require "spec_helper"

describe VazhipadusController do
  describe "routing" do

    it "routes to #index" do
      get("/vazhipadus").should route_to("vazhipadus#index")
    end

    it "routes to #new" do
      get("/vazhipadus/new").should route_to("vazhipadus#new")
    end

    it "routes to #show" do
      get("/vazhipadus/1").should route_to("vazhipadus#show", :id => "1")
    end

    it "routes to #edit" do
      get("/vazhipadus/1/edit").should route_to("vazhipadus#edit", :id => "1")
    end

    it "routes to #create" do
      post("/vazhipadus").should route_to("vazhipadus#create")
    end

    it "routes to #update" do
      put("/vazhipadus/1").should route_to("vazhipadus#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/vazhipadus/1").should route_to("vazhipadus#destroy", :id => "1")
    end

  end
end

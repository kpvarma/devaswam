require "spec_helper"

describe DevansController do
  describe "routing" do

    it "routes to #index" do
      get("/devans").should route_to("devans#index")
    end

    it "routes to #new" do
      get("/devans/new").should route_to("devans#new")
    end

    it "routes to #show" do
      get("/devans/1").should route_to("devans#show", :id => "1")
    end

    it "routes to #edit" do
      get("/devans/1/edit").should route_to("devans#edit", :id => "1")
    end

    it "routes to #create" do
      post("/devans").should route_to("devans#create")
    end

    it "routes to #update" do
      put("/devans/1").should route_to("devans#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/devans/1").should route_to("devans#destroy", :id => "1")
    end

  end
end

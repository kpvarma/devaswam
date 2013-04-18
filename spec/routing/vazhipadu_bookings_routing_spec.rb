require "spec_helper"

describe VazhipaduBookingsController do
  describe "routing" do

    it "routes to #index" do
      get("/vazhipadu_bookings").should route_to("vazhipadu_bookings#index")
    end

    it "routes to #new" do
      get("/vazhipadu_bookings/new").should route_to("vazhipadu_bookings#new")
    end

    it "routes to #show" do
      get("/vazhipadu_bookings/1").should route_to("vazhipadu_bookings#show", :id => "1")
    end

    it "routes to #edit" do
      get("/vazhipadu_bookings/1/edit").should route_to("vazhipadu_bookings#edit", :id => "1")
    end

    it "routes to #create" do
      post("/vazhipadu_bookings").should route_to("vazhipadu_bookings#create")
    end

    it "routes to #update" do
      put("/vazhipadu_bookings/1").should route_to("vazhipadu_bookings#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/vazhipadu_bookings/1").should route_to("vazhipadu_bookings#destroy", :id => "1")
    end

  end
end

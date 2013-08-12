require "spec_helper"

describe ConsultsController do
  describe "routing" do

    it "routes to #index" do
      get("/consults").should route_to("consults#index")
    end

    it "routes to #new" do
      get("/consults/new").should route_to("consults#new")
    end

    it "routes to #show" do
      get("/consults/1").should route_to("consults#show", :id => "1")
    end

    it "routes to #edit" do
      get("/consults/1/edit").should route_to("consults#edit", :id => "1")
    end

    it "routes to #create" do
      post("/consults").should route_to("consults#create")
    end

    it "routes to #update" do
      put("/consults/1").should route_to("consults#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/consults/1").should route_to("consults#destroy", :id => "1")
    end

  end
end

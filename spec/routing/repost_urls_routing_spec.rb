require "spec_helper"

describe RepostUrlsController do
  describe "routing" do

    it "routes to #index" do
      get("/repost_urls").should route_to("repost_urls#index")
    end

    it "routes to #new" do
      get("/repost_urls/new").should route_to("repost_urls#new")
    end

    it "routes to #show" do
      get("/repost_urls/1").should route_to("repost_urls#show", :id => "1")
    end

    it "routes to #edit" do
      get("/repost_urls/1/edit").should route_to("repost_urls#edit", :id => "1")
    end

    it "routes to #create" do
      post("/repost_urls").should route_to("repost_urls#create")
    end

    it "routes to #update" do
      put("/repost_urls/1").should route_to("repost_urls#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/repost_urls/1").should route_to("repost_urls#destroy", :id => "1")
    end

  end
end

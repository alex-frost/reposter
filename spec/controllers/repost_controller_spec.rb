require 'spec_helper'

describe RepostController do
  let(:heroku_data) { {"key" => "value" } }

  before do
    RepostUrl.create({url: "www.example.com"})
  end

  describe "POST create" do
    it "creates a new RepostUrl" do
      post :create, {:repost => heroku_data}
      PostToUrl.any_instance.should_receive(:go)
    end
  end

end

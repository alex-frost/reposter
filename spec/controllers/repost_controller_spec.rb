require 'spec_helper'

describe RepostController do
  let(:heroku_data) { {"key" => "value" } }

  before do
    RepostUrl.create({url: "www.example.com"})
  end

  describe "POST create" do
    it "creates a new RepostUrl" do
      PostToUrl.should_receive(:perform).once
      post :create, {:repost => heroku_data}
    end
  end

end

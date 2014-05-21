require 'spec_helper'

describe RepostController do
  let(:heroku_data) { {"key" => "value" } }

  describe "POST create" do
    it "creates a new RepostUrl" do
      post :create, {:repost_url => heroku_data}
      PostTo.any_instance.should_receive(:url)
    end
  end

end

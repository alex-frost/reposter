require 'spec_helper'

describe "repost_urls/index" do
  before(:each) do
    assign(:repost_urls, [
      stub_model(RepostUrl,
        :url => "Url"
      ),
      stub_model(RepostUrl,
        :url => "Url"
      )
    ])
  end

  it "renders a list of repost_urls" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Url".to_s, :count => 2
  end
end

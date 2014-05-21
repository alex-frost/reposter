require 'spec_helper'

describe "repost_urls/show" do
  before(:each) do
    @repost_url = assign(:repost_url, stub_model(RepostUrl,
      :url => "Url"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Url/)
  end
end

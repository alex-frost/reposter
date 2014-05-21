require 'spec_helper'

describe "repost_urls/edit" do
  before(:each) do
    @repost_url = assign(:repost_url, stub_model(RepostUrl,
      :url => "MyString"
    ))
  end

  it "renders the edit repost_url form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", repost_url_path(@repost_url), "post" do
      assert_select "input#repost_url_url[name=?]", "repost_url[url]"
    end
  end
end

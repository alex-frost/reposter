require 'spec_helper'

describe "repost_urls/new" do
  before(:each) do
    assign(:repost_url, stub_model(RepostUrl,
      :url => "MyString"
    ).as_new_record)
  end

  it "renders new repost_url form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", repost_urls_path, "post" do
      assert_select "input#repost_url_url[name=?]", "repost_url[url]"
    end
  end
end

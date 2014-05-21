feature "RePoster", type: :feature do
  let(:heroku_data) { {"key" => "value" } }
  scenario "add a url and post" do
    visit "/"

    click_on 'Add url'

    fill_in :Url, with: "www.example.com"

    post "/", heroku_data

    check_data_is_posted
  end

  def check_data_is_posted
    #not sure how to test this yet
  end

end




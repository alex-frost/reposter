feature "RePoster", type: :feature do
  scenario "add a url and post" do
    visit "/"

    click_on 'Add url'

    fill_in :Url, with: "www.example.com"

    click_on 'Save'
  end
end




require "rails_helper"

RSpec.feature "Creating Library" do
    scenario "a user create a new library" do
    
    visit "/"
    click_link "New Library"
    fill_in "Name", with: "My new Library"
    fill_in "Category", with: "Computer and Technology"
    
    click_button "Create Library"
    
    expect(page).to have_content("Library is created")
    expect(page.current_path).to eq(libraries_path)
    
    end
end
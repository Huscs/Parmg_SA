When(/^I go to the homepage$/) do
  visit root_path
end

Then(/^I should see the welcome message$/) do
  expect(page).to have_content("Welcome Users")
end

Then(/^I should see the about link$/) do
  expect(page).to have_link('About')

end


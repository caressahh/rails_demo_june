When(/^I am on the landing page$/) do
  visit root_path
end

Given(/^the following articles exist$/) do |table|
  table.hashes.each do |hash|
    Article.create!(hash)
  end
end

Then(/^show me the page$/) do
  save_and_open_page # Write code here that turns the phrase above into concrete actions
end
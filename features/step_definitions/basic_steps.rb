When(/^I am on the landing page$/) do
  visit root_path
end

Given(/^the following articles exist$/) do |table|
  table.hashes.each do |hash|
    Article.create!(hash)
  end
end


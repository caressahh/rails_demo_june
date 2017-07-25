Given(/^I visit the "([^"]*)" page$/) do |page_name|
  case page_name
  when "landing"
    visit root_path
 else
  raise "#{page_name} doesn't exist"
  end
end

When(/^I click "([^"]*)" link$/) do |link_name|
  click_link link_name
end

When(/^I fill in "([^"]*)" with "([^"]*)"$/) do |input, value|
  fill_in(input, :with => value)
end

When(/^I click "([^"]*)" button$/) do |button_name|
  click_button button_name
end

Then(/^I should be on "([^"]*)" page$/) do |page_name|
  case page_name
    when "landing"
      visit root_path

  end
end


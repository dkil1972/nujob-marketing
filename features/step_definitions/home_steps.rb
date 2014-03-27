Then(/^I can see homepage$/) do
  page.has_content?("Home")
end

Given(/^I'm go to homepage$/) do
  visit "/"
end